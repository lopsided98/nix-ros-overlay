
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-autoware-map-msgs";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/kinetic/autoware_map_msgs/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "ddcf9f803144f3a2c1145b5d86edffea46ceed64f23260322d324ca7aafc6374";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Includes messages to handle each class in Autoware Map Format'';
    license = with lib.licenses; [ asl20 ];
  };
}
