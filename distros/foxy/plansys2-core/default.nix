
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-pddl-parser, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-plansys2-core";
  version = "1.0.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "IntelligentRoboticsLabs";
        repo = "ros2_planning_system-release";
        rev = "release/foxy/plansys2_core/1.0.10-1";
        sha256 = "sha256-rFTLqfkosDOAWatfXX4d+0bNRKn8rona1yskASHYwCQ=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-pddl-parser pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based core  for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
