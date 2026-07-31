
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, easynav-interfaces, easynav-support-py, geometry-msgs, python3Packages, rclpy, ros2cli, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-jazzy-easynav-tools";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_tools/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "7414ba0b404ebab419bc35bda2286da3ac62f4a20afaef860506359a06b4886c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ easynav-interfaces easynav-support-py geometry-msgs python3Packages.platformdirs python3Packages.rich python3Packages.typing-extensions rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "ROS 2 Navigation tools: TUI + ros2cli commands for EasyNav.";
    license = with lib.licenses; [ asl20 ];
  };
}
