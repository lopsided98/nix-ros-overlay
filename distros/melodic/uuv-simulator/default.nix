
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuv-assistants, uuv-auv-control-allocator, uuv-control-cascaded-pid, uuv-control-msgs, uuv-control-utils, uuv-descriptions, uuv-gazebo, uuv-gazebo-plugins, uuv-gazebo-ros-plugins, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-worlds, uuv-sensor-ros-plugins, uuv-sensor-ros-plugins-msgs, uuv-teleop, uuv-thruster-manager, uuv-trajectory-control, uuv-world-plugins, uuv-world-ros-plugins, uuv-world-ros-plugins-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-simulator";
  version = "0.6.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "uuv_simulator-release";
        rev = "release/melodic/uuv_simulator/0.6.13-0";
        sha256 = "sha256-CfXEVhCAhNlpJPBpAQA0o6DTIS3LU5C8mWVInaDsMcY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ uuv-assistants uuv-auv-control-allocator uuv-control-cascaded-pid uuv-control-msgs uuv-control-utils uuv-descriptions uuv-gazebo uuv-gazebo-plugins uuv-gazebo-ros-plugins uuv-gazebo-ros-plugins-msgs uuv-gazebo-worlds uuv-sensor-ros-plugins uuv-sensor-ros-plugins-msgs uuv-teleop uuv-thruster-manager uuv-trajectory-control uuv-world-plugins uuv-world-ros-plugins uuv-world-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uuv_simulator contains Gazebo plugins and ROS packages for modeling and simulating unmanned underwater vehicles'';
    license = with lib.licenses; [ asl20 ];
  };
}
