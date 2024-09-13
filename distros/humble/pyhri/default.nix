
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, geometry-msgs, hri, hri-msgs, opencv, pybind11-vendor, python3Packages, rclcpp, rclpy, sensor-msgs, std-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-pyhri";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/humble/pyhri/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "a16779a3c682d19342f9b3d8acdbe2f84dfa15f9a6de3ea1896b64a0f6ed2302";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python pybind11-vendor ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common cv-bridge geometry-msgs hri-msgs python3Packages.numpy python3Packages.opencv4 sensor-msgs std-msgs tf2-ros-py ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs hri opencv opencv.cxxdev python3Packages.opencv4 rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "A python wrapper around hri package";
    license = with lib.licenses; [ asl20 ];
  };
}
