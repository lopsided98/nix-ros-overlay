
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, play-motion-builder-msgs, play-motion2, play-motion2-msgs, rclcpp, rclcpp-action, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-play-motion-builder";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion_builder-release/archive/release/kilted/play_motion_builder/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e942466aa69f550d42a6f446fec615f2ce18cb10e430a33b6ff2a5ba270cc0ab";
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
