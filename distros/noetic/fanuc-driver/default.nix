
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-robot-client, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-fanuc-driver";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_driver/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "18742764e9f494230f89560a0154229491c046f76abd8c7d0fb01843f843b651";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ industrial-robot-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
     ROS-Industrial nodes for interfacing with Fanuc robot controllers.
   </p>
   <p>
     This package is part of the ROS-Industrial program and contains nodes
     for interfacing with Fanuc industrial robot controllers that support
     the KAREL programming environment.
   </p>
   <p>
     Refer to the readme of this package for a note on the performance of
     the driver.
   </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
