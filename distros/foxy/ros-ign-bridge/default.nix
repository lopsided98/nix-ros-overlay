
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, ignition, launch-ros, launch-testing, launch-testing-ament-cmake, nav-msgs, pkg-config, rclcpp, rosgraph-msgs, sensor-msgs, std-msgs, tf2-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros-ign-bridge";
  version = "0.221.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "ros_ign-release";
        rev = "release/foxy/ros_ign_bridge/0.221.2-1";
        sha256 = "sha256-7cn94z7LBUgCxNdq8TrKu4dHI46cnLKC69DVe5UiM0o=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs ignition.msgs5 ignition.transport8 nav-msgs rclcpp rosgraph-msgs sensor-msgs std-msgs tf2-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Bridge communication between ROS and Ignition Transport'';
    license = with lib.licenses; [ asl20 ];
  };
}
