
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, cartesian-interface, cartesian-trajectory-interpolation, catkin, control-msgs, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-state-controller, joint-trajectory-controller, kdl-parser, pluginlib, robot-state-publisher, ros-control-boilerplate, roscpp, rospy, rostest, speed-scaling-interface, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-cartesian-trajectory-controller";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/cartesian_trajectory_controller/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "f7341c2494a83b7152a8aa0d9d95134091012c2b80b0598ed39b0f767070d685";
  };

  buildType = "catkin";
  checkInputs = [ actionlib actionlib-msgs control-msgs controller-manager-msgs joint-state-controller joint-trajectory-controller robot-state-publisher ros-control-boilerplate rostest trajectory-msgs xacro ];
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-interpolation controller-interface controller-manager hardware-interface kdl-parser pluginlib roscpp rospy speed-scaling-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Cartesian trajectory controller with multiple hardware interface support'';
    license = with lib.licenses; [ asl20 ];
  };
}
