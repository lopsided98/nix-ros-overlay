
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs, tl-expected }:
buildRosPackage {
  pname = "ros-iron-point-cloud-transport";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/iron/point_cloud_transport/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "e4fc94ffb0513e508876da035ffc2685e471e24bf4953c1222d12bc345444c86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ message-filters pluginlib rclcpp rclcpp-components sensor-msgs tl-expected ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Support for transporting PointCloud2 messages in compressed format and plugin interface for implementing additional PointCloud2 transports.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
