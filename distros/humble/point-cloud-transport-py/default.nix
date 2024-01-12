
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, pybind11-vendor, python-cmake-module, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-point-cloud-transport-py";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/humble/point_cloud_transport_py/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "e2907c73fb2ae544f847e7bc694862884ea7e29313e10e18a730c81c49fc8f3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  propagatedBuildInputs = [ pluginlib point-cloud-transport pybind11-vendor rclcpp rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''Python API for point_cloud_transport'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
