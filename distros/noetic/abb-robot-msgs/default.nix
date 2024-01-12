
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-abb-robot-msgs";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_robot_driver_interfaces-release/archive/release/noetic/abb_robot_msgs/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "e870f1171c052b5f9975e6e6ad87c264d795c77c8f057504361f2330d200d4ac";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS message and service definitions, representing basic interaction with ABB robot controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
