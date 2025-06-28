
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, pybind11-vendor, python3, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-py";
  version = "5.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport_py/5.2.1-1.tar.gz";
    name = "5.2.1-1.tar.gz";
    sha256 = "a70f33bc754e4217c1fda700e173fc657bc821f988582d9021b3e1faac6e35dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python3 ];
  propagatedBuildInputs = [ pluginlib point-cloud-transport pybind11-vendor rclcpp rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Python API for point_cloud_transport";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
