
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, cartesian-interface, cartesian-trajectory-interpolation, catkin, control-msgs, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-state-controller, joint-trajectory-controller, kdl-parser, pluginlib, robot-state-publisher, ros-control-boilerplate, roscpp, rospy, rostest, speed-scaling-interface, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cartesian-trajectory-controller";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_trajectory_controller/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "a76d6faca9681d71b4d5cb2c8112ebaa045dde95182797cc95c01bb02a34133f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ actionlib actionlib-msgs control-msgs controller-manager-msgs joint-state-controller joint-trajectory-controller robot-state-publisher ros-control-boilerplate rostest trajectory-msgs xacro ];
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-interpolation controller-interface controller-manager hardware-interface kdl-parser pluginlib roscpp rospy speed-scaling-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Cartesian trajectory controller with multiple hardware interface support'';
    license = with lib.licenses; [ asl20 ];
  };
}
