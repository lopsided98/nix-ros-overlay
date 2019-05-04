
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-p2os-msgs";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_msgs/2.1.0-0.tar.gz;
    sha256 = "581343da8fbc696ecdb595b12fbbd7a967940c22f945c2ad491bb79b0f2fec59";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines the messages that are used to communicate with the
    p2os_driver package and the ROS infrastructure.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
