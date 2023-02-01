
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, builtin-interfaces, python-cmake-module, rclcpp, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-message-filters";
  version = "3.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "ros2_message_filters-release";
        rev = "release/foxy/message_filters/3.2.5-1";
        sha256 = "sha256-+xU3nEQma8QYqb7B+ha2Jg78ZqILS6sYS+/cPGB0+XE=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros builtin-interfaces python-cmake-module rclcpp rclpy ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''A set of ROS2 message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
