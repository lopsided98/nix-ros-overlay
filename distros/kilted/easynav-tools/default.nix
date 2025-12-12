
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, easynav-interfaces, easynav-support-py, geometry-msgs, python3Packages, rclpy, ros2cli, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-kilted-easynav-tools";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_tools/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "86477c3ffa97177c4a035d24ad3d064f1d759f02f675d8f2ce9f9b688ff8367f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ easynav-interfaces easynav-support-py geometry-msgs python3Packages.platformdirs python3Packages.rich python3Packages.typing-extensions rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "ROS 2 Navigation tools: TUI + ros2cli commands for EasyNav.";
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
