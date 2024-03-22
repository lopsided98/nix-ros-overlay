
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, asio, asio-cmake-module, geometry-msgs, io-context, nav-msgs, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, serial-driver, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-robotont-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotont_driver-release/archive/release/humble/robotont_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "29765d70dcc2ae33eabae5ecfd4b12e56db84d8609fb5ea0804030e146796e4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto asio-cmake-module ];
  propagatedBuildInputs = [ asio geometry-msgs io-context nav-msgs pluginlib rclcpp rclcpp-components rclcpp-lifecycle serial-driver std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto asio-cmake-module ];

  meta = {
    description = ''Hardware driver for the Robotont robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
