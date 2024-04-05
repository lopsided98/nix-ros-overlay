
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, pybind11-vendor, python-cmake-module, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-point-cloud-transport-py";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/iron/point_cloud_transport_py/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "646603f3cf9fecaace3e4d51970552f8a0e55ceea442d549eae96385825d5591";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  propagatedBuildInputs = [ pluginlib point-cloud-transport pybind11-vendor rclcpp rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = "Python API for point_cloud_transport";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
