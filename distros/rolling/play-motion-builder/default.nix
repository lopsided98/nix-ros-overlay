
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, play-motion-builder-msgs, play-motion2, play-motion2-msgs, rclcpp, rclcpp-action, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-play-motion-builder";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/rolling/play_motion_builder/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "7632133e9a01497fd5925f5d63550d417e65e2536b2697e2827436d077596d90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ play-motion-builder-msgs play-motion2 play-motion2-msgs rclcpp rclcpp-action sensor-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The play_motion_builder package, a node to handle the creation of new motions for play_motion.";
    license = with lib.licenses; [ asl20 ];
  };
}
