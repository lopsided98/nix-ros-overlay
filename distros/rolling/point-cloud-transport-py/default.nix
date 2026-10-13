
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-transport, python3, python3Packages, rclcpp, rclpy, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-transport-py";
  version = "6.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport-release/archive/release/rolling/point_cloud_transport_py/6.0.4-1.tar.gz";
    name = "6.0.4-1.tar.gz";
    sha256 = "68aea6e8633edaa6c94d1ee264868a4ba90c1fdcc6c4d2d61fe6b4ae22bc453b";
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
