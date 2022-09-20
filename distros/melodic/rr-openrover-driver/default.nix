
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, message-generation, message-runtime, nav-msgs, roscpp, rospy, rr-openrover-driver-msgs, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-driver";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_openrover_driver/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "d44e90740c1301be2451d7a739f42711563236f17e04e027363ed2c8140e4be8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation tf2-geometry-msgs ];
  propagatedBuildInputs = [ geometry-msgs joy message-runtime nav-msgs roscpp rospy rr-openrover-driver-msgs sensor-msgs std-msgs tf2 twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an interface between ros and Rover Robotics rover hardware. Inputs to rr_openrover_driver
    include emergency stop and velocity commands.  It outputs diagnostic data such as encoder
    readings and battery charge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
