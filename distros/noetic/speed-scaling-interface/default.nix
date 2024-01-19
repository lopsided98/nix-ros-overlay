
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-speed-scaling-interface";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/noetic/speed_scaling_interface/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "7aaf59e25c54244b9c6d30dd863fb9151bb011de66a47bc1baeb8836142d302b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware interface reading a scalar value from robot hardware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
