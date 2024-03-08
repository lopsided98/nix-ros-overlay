
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, pybind11-vendor, python-cmake-module, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-py";
  version = "3.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport_py/3.0.4-2.tar.gz";
    name = "3.0.4-2.tar.gz";
    sha256 = "55dc464325e7e1bb0faebdde6373979572404e5e6b1a92a7e1164085a4b3dfd2";
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
