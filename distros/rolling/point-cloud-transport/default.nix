
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "00f7ceaf8d35a93ebd64545c95f8de54a61c226003fd4e6095dc58fff36b7216";
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
