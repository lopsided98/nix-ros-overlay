
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-robot-client, simple-message }:
buildRosPackage {
  pname = "ros-noetic-abb-driver";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_driver-release/archive/release/noetic/abb_driver/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "c5f09291bfcb18a477d3150f0abdb955be52dd69140ac3e417b0256a6f4aaec5";
  };

  buildType = "catkin";
  buildInputs = [ catkin simple-message ];
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
