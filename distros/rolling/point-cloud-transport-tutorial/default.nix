
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, point-cloud-transport, point-cloud-transport-plugins, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-tutorial";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_tutorial-release/archive/release/rolling/point_cloud_transport_tutorial/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "0bb50fc2cdf7964c643b8b4b7b17e766f57fe3e73d1a562c04e040266b28e01e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ point-cloud-transport point-cloud-transport-plugins rclcpp rosbag2-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Tutorial for point_cloud_transport.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
