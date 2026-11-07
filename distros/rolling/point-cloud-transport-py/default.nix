
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-transport, python3, python3Packages, rclcpp, rclpy, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-py";
  version = "6.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport_py/6.0.5-1.tar.gz";
    name = "6.0.5-1.tar.gz";
    sha256 = "963aa35a05733fd757563eaee23ae43c8197176aee4abad808b0f7d454f491da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros ament-cmake-ros-core python3 python3Packages.pybind11 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib point-cloud-transport rclcpp rclpy rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros ament-cmake-ros-core ];

  meta = {
    description = "Python API for point_cloud_transport";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
