
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, action-tutorials-interfaces, ament-cmake, ament-cmake-python, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-simple-actions";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/jazzy/simple_actions/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "5910b3aaad3d12ab0dfed9506d085909e11faa5e820c6aa11c5b20de82ad99d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ action-tutorials-interfaces ];
  propagatedBuildInputs = [ action-msgs rclcpp rclcpp-action rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple library for using the `rclpy/rclcpp` action libraries";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
