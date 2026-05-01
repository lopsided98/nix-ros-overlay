
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, pluginlib, point-cloud-transport, python3, python3Packages, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-point-cloud-transport-py";
  version = "5.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/lyrical/point_cloud_transport_py/5.4.1-1.tar.gz";
    name = "5.4.1-1.tar.gz";
    sha256 = "e8e74e782d2132a35713f422117368df755b900690f1f884181ad505a6fba758";
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
