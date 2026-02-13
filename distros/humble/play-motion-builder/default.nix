
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, play-motion-builder-msgs, play-motion2, play-motion2-msgs, rclcpp, rclcpp-action, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-play-motion-builder";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/humble/play_motion_builder/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "af54a2fb269c88374a08ddd74f5aac91823cc8dfd824d980b7d1d9ebca13c66f";
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
