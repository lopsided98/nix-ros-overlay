
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, example-interfaces, nav-msgs, python3Packages, rclcpp, rclpy, ros-environment, yasmin, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-rolling-yasmin-demos";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_demos/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "57ba7d3d2ec043cba2469535552277884c87b67f76da834c9f79c53df43c5c53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces nav-msgs rclcpp rclpy yasmin yasmin-ros yasmin-viewer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Demos of YASMIN (Yet Another State MachINe)";
    license = with lib.licenses; [ gpl3 ];
  };
}
