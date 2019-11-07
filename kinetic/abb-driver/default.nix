
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-robot-client }:
buildRosPackage {
  pname = "ros-kinetic-abb-driver";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_driver/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "6966a5d8d531ba7d06f72d87267f7de73af0d80781f5b25eebe892ccff89dd7f";
  };

  buildType = "catkin";
  buildInputs = [ industrial-robot-client ];
  propagatedBuildInputs = [ industrial-robot-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     ROS-Industrial nodes for interfacing with ABB robot controllers.
   </p>
   <p>
     This package is part of the ROS-Industrial program and contains nodes 
     for interfacing with ABB industrial robot controllers.
   </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
