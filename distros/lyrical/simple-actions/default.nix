
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-python, example-interfaces, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-simple-actions";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/lyrical/simple_actions/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "36418bec69a024f89485dfdf2eaae3ab2b33e7502aba6a4fefd11d72e68569a5";
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
