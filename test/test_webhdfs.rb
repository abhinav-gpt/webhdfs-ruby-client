$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require "webhdfs"

#puts (300..399).include?(307)

#require "webhdfs/fileutils"

client = WebHDFS::Client.new
client.host="api.0.efoxconn.com"
client.port=14000
client.auth_type=:kerberos
client.username="zen"
client.pass_keytab="abc123"
client.username="hdfs/api.0.efoxconn.com"
client.pass_keytab="/etc/hadoop/conf/hdfs.keytab"

client.delete('/user/fU3931aa69444d4558aba6b26981994e6e',  {"recursive"=>"true"})
#client.mkdir('/user/zen')
#client.content_summary("/")
myhome = client.homedir
p myhome
info={"user"=>"u740a1d36-2e6d-4aa9-b2e7-028750a8c918", "pass"=>"pfa6f202f-b8da-421e-956b-a5383899192b"}
client.username=info["user"]
client.pass_keytab=info["pass"]
myhome = client.homedir
p myhome
client.setowner(myhome, {:owner=>info["user"],:group=>info["user"]} )
#client.create_symlink("/user/gangang/lznew", "/user/zen/newfolder")
# puts client.mkdir(myhome+"/newfolder/nf1/nf2")
#puts client.delete(myhome+"/newfolder")
#client.getfilechecksum("/user/update-java.deb")

#File.open("/tmp/update-java.deb", "wb") do |f|
#  f.write client.read("/user/update-java.deb")
#end

#for x in 20..30
#
#client.delete('/user/U-abcdef-'+ x.to_s)
## client.mkdir('/user/U-abcdef-'+ x.to_s)
#end

#client.setowner('/user/zen', {"owner"=> "zen", "group"=> "zen"} )
file = "test_helper.rb"
#for x in 0..10
#  client.append("/user/VERSION"+x.to_s,
#                File.new(file, 'rb').read(File.size(file)).to_s )
#end

#### PUT Curl::Err::SendFailedRewind
#for x in 20..30
#  client.create("/user/VERSION"+x.to_s,
#                File.new(file, 'rb').read(File.size(file)) )
#end
