
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, asio, asio-cmake-module, geometry-msgs, io-context, nav-msgs, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, serial-driver, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-robotont-driver";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotont_driver-release/archive/release/humble/robotont_driver/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "c8425609bfff1933bbd63d63e200a081a1db6531ac412c7197347a388b5b7bcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto asio-cmake-module ];
  propagatedBuildInputs = [ asio geometry-msgs io-context nav-msgs pluginlib rclcpp rclcpp-components rclcpp-lifecycle serial-driver std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto asio-cmake-module ];

  meta = {
    description = "Hardware driver for the Robotont robot";
    license = with lib.licenses; [ asl20 ];
  };
}
