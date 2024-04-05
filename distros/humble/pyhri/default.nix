
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, geometry-msgs, hri, hri-msgs, pybind11-vendor, python3Packages, rclcpp, sensor-msgs, std-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-pyhri";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/humble/pyhri/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "338233435bbe9f2647117db7d61b3650431052636e8ccaf0137e6f98ab7b522a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python pybind11-vendor ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common cv-bridge geometry-msgs hri-msgs python3Packages.numpy python3Packages.opencv4 sensor-msgs std-msgs tf2-ros-py ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs hri rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A python wrapper around hri package";
    license = with lib.licenses; [ asl20 ];
  };
}
