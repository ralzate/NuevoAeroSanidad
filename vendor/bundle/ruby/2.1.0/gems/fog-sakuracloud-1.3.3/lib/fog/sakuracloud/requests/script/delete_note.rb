# coding: utf-8

module Fog
  module SakuraCloud
    class Script
      class Real
        def delete_note( id )
          request(
            :headers => {
              'Authorization' => "Basic #{@auth_encode}"
            },
            :expects  => [200],
            :method => 'DELETE',
            :path => "#{Fog::SakuraCloud::SAKURACLOUD_API_ENDPOINT}/note/#{id}"
          )
        end
      end # Real

      class Mock
        def delete_note( id )
          response = Excon::Response.new
          response.status = 200
          response.body = {
            "Note"=>
            {"ID"=>"112700759822",
             "Name"=>"hogehoge2",
             "Class"=>"shell",
             "Scope"=>"user",
             "Content"=>"",
             "Description"=>"",
             "Remark"=>nil,
             "Availability"=>"available",
             "CreatedAt"=>"2015-09-05T20:04:24+09:00",
             "ModifiedAt"=>"2015-09-05T20:04:24+09:00",
             "Icon"=>nil,
             "Tags"=>[]},
            "Success"=>true,
            "is_ok"=>true
          }
          response
        end
      end
    end
  end
end
