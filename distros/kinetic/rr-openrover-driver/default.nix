
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, message-generation, message-runtime, nav-msgs, roscpp, rospy, rr-openrover-driver-msgs, sensor-msgs, std-msgs, tf, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-driver";
  version = "0.7.3-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_driver/0.7.3-2.tar.gz";
    name = "0.7.3-2.tar.gz";
    sha256 = "cacceb53b3813b6df1251993d67ef64cefd1a1bf06ebb1fa106541d8a0d53b0b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs joy message-runtime nav-msgs roscpp rospy rr-openrover-driver-msgs sensor-msgs std-msgs tf twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an interface between ros and Rover Robotics rover hardware. Inputs to rr_openrover_driver
    include emergency stop and velocity commands.  It outputs diagnostic data such as encoder
    readings and battery charge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
