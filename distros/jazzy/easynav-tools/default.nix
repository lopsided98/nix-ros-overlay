
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, easynav-interfaces, easynav-support-py, geometry-msgs, python3Packages, rclpy, ros2cli, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-jazzy-easynav-tools";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_tools/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "7bf4433027161d03d270cdd6ba03067c95ffa7e5b4fc763b51d5e327c820da58";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ easynav-interfaces easynav-support-py geometry-msgs python3Packages.platformdirs python3Packages.rich python3Packages.typing-extensions rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "ROS 2 Navigation tools: TUI + ros2cli commands for EasyNav.";
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
