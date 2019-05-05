
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-head-action, catkin, gazeboSimulator, pr2-gripper-action, single-joint-position-action, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-lunar-pr2-controller-configuration-gazebo";
  version = "2.0.13-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_simulator-release/archive/release/lunar/pr2_controller_configuration_gazebo/2.0.13-1.tar.gz;
    sha256 = "129ee010e308c8e261c5612b6d76c9eb7afd07dcf7b12c23be7b30c3952e8748";
  };

  propagatedBuildInputs = [ pr2-head-action gazeboSimulator.gazebo pr2-gripper-action single-joint-position-action pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A copy of the pr2_controller_configuration package, for use in 
    the PR2 simulator.  We maintain two copies to allow for controller
    gains to be set differently between hardware and simulation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
