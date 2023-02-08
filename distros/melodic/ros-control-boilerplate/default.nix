
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, control-msgs, control-toolbox, controller-manager, gflags, hardware-interface, joint-limits-interface, roscpp, rosparam-shortcuts, sensor-msgs, std-msgs, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-ros-control-boilerplate";
  version = "0.5.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PickNikRobotics";
        repo = "ros_control_boilerplate-release";
        rev = "release/melodic/ros_control_boilerplate/0.5.2-1";
        sha256 = "sha256-XuRMXyv88A55fdYtvL66dwjaYfe9HJd6mU1JJJHSGL4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules gflags ];
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-manager hardware-interface joint-limits-interface roscpp rosparam-shortcuts sensor-msgs std-msgs trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple simulation interface and template for setting up a hardware interface for ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
