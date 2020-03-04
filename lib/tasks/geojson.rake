namespace :geojson do
  desc "Imports Stations and Lines from a geojson file"
  task :import, [:file] => :environment do |t, args|
    args.with_defaults(file: 'doc/frankfurt.geojson')

    json_data = JSON.load(Rails.root.join(args.file))

    json_data['features'].each do |feature|
      if feature['geometry']['type'] == 'Point'
        next if %w[subway monorail].include?(feature['properties']['station']) ||
                feature['properties']['subway'] == 'yes' ||
                feature['properties']['monorail'] == 'yes'

        # train station
        puts "Train Station *#{feature['properties']['railway:ref']}* #{feature['properties']['name']}"
      elsif feature['geometry']['type'] == 'MultiLineString'
        next if feature['properties']['ref'] !~ /\A\d{4}\Z/
        # line
        puts "Train Line (ML) *#{feature['properties']['ref']}* #{feature['properties']['name']}, #{feature['properties']['alt_name']}"
      elsif feature['geometry']['type'] == 'LineString'
        next if feature['properties']['ref'] !~ /\A\d{4}\Z/
        # line
        puts "Train Line *#{feature['properties']['ref']}* #{feature['properties']['name']}, #{feature['properties']['alt_name']}"
      end
    end
  end
end
