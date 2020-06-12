
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, message-generation, message-runtime, nav-msgs, roscpp, rospy, rr-openrover-driver-msgs, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-driver";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_openrover_driver/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "00be302ddb8b762e9c8828755143409e72ed3702db77728f39dbdde369527a96";
  };

  buildType = "catkin";
  buildInputs = [ message-generation tf2-geometry-msgs ];
  propagatedBuildInputs = [ geometry-msgs joy message-runtime nav-msgs roscpp rospy rr-openrover-driver-msgs sensor-msgs std-msgs tf2 twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an interface between ros and Rover Robotics rover hardware. Inputs to rr_openrover_driver
    include emergency stop and velocity commands.  It outputs diagnostic data such as encoder
    readings and battery charge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
