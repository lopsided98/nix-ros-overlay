
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, pybind11-vendor, python-cmake-module, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-point-cloud-transport-py";
  version = "1.0.20-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/humble/point_cloud_transport_py/1.0.20-1.tar.gz";
    name = "1.0.20-1.tar.gz";
    sha256 = "50aba9fdd5b7c713ad54cc93e034786b084cb29a7a67b808e84a1e1c7b8e3861";
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
