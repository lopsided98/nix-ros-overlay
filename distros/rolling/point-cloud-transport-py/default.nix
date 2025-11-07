
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, python3, python3Packages, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-py";
  version = "5.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport_py/5.3.2-1.tar.gz";
    name = "5.3.2-1.tar.gz";
    sha256 = "8612aafc6c60c307e2113483859a9b520ac7a86b343f21b71f320d7a7eedd3a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python3 ];
  propagatedBuildInputs = [ pluginlib point-cloud-transport python3Packages.pybind11 rclcpp rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Python API for point_cloud_transport";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
