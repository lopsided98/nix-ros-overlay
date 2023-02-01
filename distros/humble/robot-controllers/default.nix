
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, angles, control-msgs, geometry-msgs, kdl-parser, nav-msgs, orocos-kdl, pluginlib, rclcpp, rclcpp-action, robot-controllers-interface, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-humble-robot-controllers";
  version = "0.9.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "robot_controllers-ros2-release";
        rev = "release/humble/robot_controllers/0.9.3-1";
        sha256 = "sha256-CW/MOZq5Lr+ookyxZHNH4xoBmG7I9gfRf+/28JicDNM=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-gtest ];
  propagatedBuildInputs = [ angles control-msgs geometry-msgs kdl-parser nav-msgs orocos-kdl pluginlib rclcpp rclcpp-action robot-controllers-interface sensor-msgs std-msgs tf2-geometry-msgs tf2-ros trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Some basic robot controllers for use with robot_controllers_interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
