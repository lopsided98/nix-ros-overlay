
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, twist-mux, sensor-msgs, catkin, joy, roscpp, nav-msgs, message-generation, message-runtime, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-driver";
  version = "0.7.2-r1";

  src = fetchurl {
    url = https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_driver/0.7.2-1.tar.gz;
    sha256 = "ebdecb748b235dfb968a0a7b8a4f9cde24b4450a15a9415eb6a275dccc310610";
  };

  buildInputs = [ tf sensor-msgs nav-msgs message-generation rospy std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ twist-mux tf sensor-msgs joy nav-msgs message-runtime rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an interface between ros and Rover Robotics rover hardware. Inputs to rr_openrover_driver
    include emergency stop and velocity commands.  It outputs diagnostic data such as encoder
    readings and battery charge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
