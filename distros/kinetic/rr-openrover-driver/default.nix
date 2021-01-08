
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, message-generation, message-runtime, nav-msgs, roscpp, rospy, rr-openrover-driver-msgs, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "082b40321712e51a6693eda24ec2ff62f61ea14ca1fd098e1487505d52c41205";
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
