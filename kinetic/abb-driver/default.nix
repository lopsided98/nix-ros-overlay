
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-robot-client }:
buildRosPackage {
  pname = "ros-kinetic-abb-driver";
  version = "1.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_driver/1.3.0-1.tar.gz;
    sha256 = "96d96d288b6c389f94df427ac061ce3eaba78bea0f19559ca45fdc1ce3a6abe8";
  };

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
    #license = lib.licenses.BSD;
  };
}
