
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, pybind11-vendor, python3, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-point-cloud-transport-py";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/kilted/point_cloud_transport_py/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "32c638b7e8e1cef0427c2ca6b5a0762b2c55a02587520e335d596eac13ed4018";
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
