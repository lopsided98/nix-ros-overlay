
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-volta-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/noetic/volta_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "33c96cedf001dac8cc8c39cf1a8939eadad9de0d4b500c8632dd457e42683bba";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_msgs package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
