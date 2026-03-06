
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, geometry-msgs, hri, hri-msgs, opencv, pybind11-vendor, python3Packages, rclcpp, rclpy, sensor-msgs, std-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-pyhri";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/jazzy/pyhri/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "385a42a5da1df698d88798af906b2d63acc877b9f3831ba2ead1045dd189b88f";
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
