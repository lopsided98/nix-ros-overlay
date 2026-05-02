
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, geometry-msgs, hri, hri-msgs, opencv, pybind11-vendor, python3Packages, rclcpp, rclpy, sensor-msgs, std-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-pyhri";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libhri-release/archive/release/rolling/pyhri/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "5a94f39286917ee59e8ff4f8e3ef94475df9281c842a3fe220bf596647c1b970";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python pybind11-vendor ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common cv-bridge geometry-msgs hri-msgs python3Packages.numpy python3Packages.opencv4 sensor-msgs std-msgs tf2-ros-py ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs hri opencv opencv.cxxdev python3Packages.numpy python3Packages.opencv4 rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "A python wrapper around hri package";
    license = with lib.licenses; [ asl20 ];
  };
}
