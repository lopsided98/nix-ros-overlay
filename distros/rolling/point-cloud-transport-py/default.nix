
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, python3, python3Packages, rclcpp, rclpy, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-py";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport_py/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "a9e1d59cca6f3bc96aa4e5622dface71fe09bb5dcfd07a451e6b825d4250ec48";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python3 ];
  propagatedBuildInputs = [ pluginlib point-cloud-transport python3Packages.pybind11 rclcpp rclpy rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Python API for point_cloud_transport";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
