
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, cartesian-interface, cartesian-trajectory-interpolation, catkin, control-msgs, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-state-controller, joint-trajectory-controller, kdl-parser, pluginlib, robot-state-publisher, ros-control-boilerplate, roscpp, rospy, rostest, speed-scaling-interface, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-cartesian-trajectory-controller";
  version = "0.1.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UniversalRobots";
        repo = "Universal_Robots_ROS_controllers_cartesian-release";
        rev = "release/melodic/cartesian_trajectory_controller/0.1.5-1";
        sha256 = "sha256-KziRZFtLlZqRl2iEHIxDap2ARaDjT/HzNz7E11n4QJc=";
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
