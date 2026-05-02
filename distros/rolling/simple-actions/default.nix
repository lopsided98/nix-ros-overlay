
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-python, example-interfaces, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-rolling-simple-actions";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/rolling/simple_actions/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "ac3b3b8d5fbfe08c22c498ae4bff5f52d6eadde1e886fd59e587b8bfb5d63569";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest example-interfaces ];
  propagatedBuildInputs = [ action-msgs rclcpp rclcpp-action rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple library for using the `rclpy/rclcpp` action libraries";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
