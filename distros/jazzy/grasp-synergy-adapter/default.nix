
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-clang-format, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-xmllint, ament-index-python, ament-lint-auto, control-msgs, rclcpp, rclcpp-action, rclpy, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grasp-synergy-adapter";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grasp_synergy_adapter-release/archive/release/jazzy/grasp_synergy_adapter/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "c27b9b0fb08890e19a6c0f7d7e41c3c42d454c2df2f81cb9b3b585ab524409cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ action-msgs ament-cmake-clang-format ament-cmake-flake8 ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-pytest ament-cmake-xmllint ament-index-python ament-lint-auto rclpy ];
  propagatedBuildInputs = [ control-msgs rclcpp rclcpp-action trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Map low-dimensional grasp synergies to configurable multi-joint hand trajectories.";
    license = with lib.licenses; [ asl20 ];
  };
}
