
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, geometry-msgs, hri, hri-msgs, pybind11-vendor, python3Packages, rclcpp, sensor-msgs, std-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-pyhri";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/humble/pyhri/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "07a42c2a5497f62f51eed4bc2e440358533baaae34784b23e364047a4c3b2b18";
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
