
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, controller-interface, cv-bridge, hardware-interface, image-transport, librealsense2, nav-msgs, pluginlib, poco, quaternion-operation, rclcpp, rclcpp-components, realtime-tools, ros2-control, rviz2, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-foxy-realsense-hardware-interface";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/realsense_hardware_interface-release/archive/release/foxy/realsense_hardware_interface/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "3119bf7e88139e500a4bd18dcf79db6296723057fb1b8c0406799f37aa0834c3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-flake8 ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ controller-interface cv-bridge hardware-interface image-transport librealsense2 nav-msgs pluginlib poco quaternion-operation rclcpp rclcpp-components realtime-tools ros2-control rviz2 sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2 hardware interface for realsense camera'';
    license = with lib.licenses; [ asl20 ];
  };
}
