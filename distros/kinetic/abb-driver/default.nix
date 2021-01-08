
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-robot-client, simple-message }:
buildRosPackage {
  pname = "ros-kinetic-abb-driver";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_driver-release/archive/release/kinetic/abb_driver/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "8c9ca236c35cd23eb502e58b67e2f09e708b48f3d9c3e8a642d6dd8ed85aa0c4";
  };

  buildType = "catkin";
  buildInputs = [ simple-message ];
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
