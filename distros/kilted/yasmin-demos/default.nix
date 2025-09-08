
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, example-interfaces, nav-msgs, python3Packages, rclcpp, rclpy, ros-environment, yasmin, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-kilted-yasmin-demos";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_demos/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "84ca086c8c6f80c24eaf59ccee51756f0e4ebd0004f3aa4dda14221da79ed38b";
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
