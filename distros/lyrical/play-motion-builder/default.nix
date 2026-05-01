
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, play-motion-builder-msgs, play-motion2, play-motion2-msgs, rclcpp, rclcpp-action, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-play-motion-builder";
  version = "1.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/lyrical/play_motion_builder/1.4.1-3.tar.gz";
    name = "1.4.1-3.tar.gz";
    sha256 = "b7b7b5cee954c277229197b9bc6bef99a569dac2bbbd9cd9d52e9b636e2a0e21";
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
