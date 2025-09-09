
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, example-interfaces, nav-msgs, python3Packages, rclcpp, rclpy, ros-environment, yasmin, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-humble-yasmin-demos";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_demos/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "04036286f41f465f30b8abaace2ce3ac435031c0a0c38e991a9063c934146f5c";
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
