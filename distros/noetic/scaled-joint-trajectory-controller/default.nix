
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, joint-trajectory-controller, pluginlib, realtime-tools, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-scaled-joint-trajectory-controller";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/noetic/scaled_joint_trajectory_controller/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "7bb6b907dfa16866d5f79b1513ad5efc39ff5ef0c0555ef74cb5b433700bb5a6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface hardware-interface joint-trajectory-controller pluginlib realtime-tools std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides controllers that use the speed scaling interface.'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
