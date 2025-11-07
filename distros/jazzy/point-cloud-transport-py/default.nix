
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, pybind11-vendor, python-cmake-module, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-point-cloud-transport-py";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/jazzy/point_cloud_transport_py/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "d0a4b24e2ab70b06248ca09f042aa01c85835352e67eacd2f02a5d863cc1abd0";
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
