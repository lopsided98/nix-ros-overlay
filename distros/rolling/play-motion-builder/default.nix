
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, play-motion-builder-msgs, play-motion2, play-motion2-msgs, rclcpp, rclcpp-action, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-play-motion-builder";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/rolling/play_motion_builder/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "559c5be69c8cf72c59c88d344c25faabbc001e11c5507442c82640ad3ebf0fdb";
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
