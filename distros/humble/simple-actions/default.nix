
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, action-tutorials-interfaces, ament-cmake, ament-cmake-python, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-humble-simple-actions";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/humble/simple_actions/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "0e53a827425e76abc2da12ab9f9347bd51b6983ed6724e4f6a03c2c005f61d8d";
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
