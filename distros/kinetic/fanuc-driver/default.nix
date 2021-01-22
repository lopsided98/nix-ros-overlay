
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-robot-client, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-driver";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_driver/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "b4cea0375f81ac549311713f0ceb785730f485c9cbacb2592f70c06bffd9be5d";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ industrial-robot-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     ROS-Industrial nodes for interfacing with Fanuc robot controllers.
   </p>
   <p>
     This package is part of the ROS-Industrial program and contains nodes
     for interfacing with Fanuc industrial robot controllers that support
     the KAREL programming environment.
   </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
