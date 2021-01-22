
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-p2os-msgs";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_msgs/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "581343da8fbc696ecdb595b12fbbd7a967940c22f945c2ad491bb79b0f2fec59";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines the messages that are used to communicate with the
    p2os_driver package and the ROS infrastructure.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
