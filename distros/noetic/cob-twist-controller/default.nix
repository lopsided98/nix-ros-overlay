
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cob-control-msgs, cob-frame-tracker, cob-script-server, cob-srvs, control-msgs, dynamic-reconfigure, eigen, eigen-conversions, geometry-msgs, kdl-conversions, kdl-parser, nav-msgs, orocos-kdl, pluginlib, python3Packages, robot-state-publisher, roscpp, roslint, rospy, rviz, sensor-msgs, std-msgs, tf, tf-conversions, topic-tools, trajectory-msgs, urdf, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-twist-controller";
  version = "0.8.21-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_control-release";
        rev = "release/noetic/cob_twist_controller/0.8.21-1";
        sha256 = "sha256-nv37MYJgNHwIWBwTkgmWjaBE7wZRScpySswr7lI02UE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools roslint ];
  propagatedBuildInputs = [ boost cmake-modules cob-control-msgs cob-frame-tracker cob-script-server cob-srvs control-msgs dynamic-reconfigure eigen eigen-conversions geometry-msgs kdl-conversions kdl-parser nav-msgs orocos-kdl pluginlib python3Packages.matplotlib python3Packages.six robot-state-publisher roscpp rospy rviz sensor-msgs std-msgs tf tf-conversions topic-tools trajectory-msgs urdf visualization-msgs xacro ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The main purpose of the cob_twist_controller is to convert target twists into joint velocities. 
  Therefore it makes use of several implemented inverse kinematics approaches at the first order differential level. 
  The inverse differential kinematics solver considers kinematic chain extensions, singularity robustness, 
  redundancy resolution and priority-based methods.
  To avoid hardware destruction there is a limiter interface active as well. 
  Via parameter server users can dynamically configure the solving strategy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
