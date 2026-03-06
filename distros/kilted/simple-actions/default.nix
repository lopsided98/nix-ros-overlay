
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-python, example-interfaces, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-kilted-simple-actions";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/kilted/simple_actions/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "8478fab329dc8d55a508ec546de07b586002888f7be2a995f17f9d29dd2e9ada";
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
