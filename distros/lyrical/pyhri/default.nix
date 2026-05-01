
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, geometry-msgs, hri, hri-msgs, opencv, pybind11-vendor, python3Packages, rclcpp, rclpy, sensor-msgs, std-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-lyrical-pyhri";
  version = "2.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libhri-release/archive/release/lyrical/pyhri/2.9.0-3.tar.gz";
    name = "2.9.0-3.tar.gz";
    sha256 = "8df5bdd8047b80d4b2210250a00dd6f40a6be818c8cf7da702901eaa57772e99";
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
