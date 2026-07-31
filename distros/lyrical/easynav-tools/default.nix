
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, easynav-interfaces, easynav-support-py, geometry-msgs, python3Packages, rclpy, ros2cli, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-lyrical-easynav-tools";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_tools/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "028feb4b71158657bc8375a7ee233b3c20c9b9d0c518ae3e0adc10372d1ab144";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ easynav-interfaces easynav-support-py geometry-msgs python3Packages.platformdirs python3Packages.rich python3Packages.typing-extensions rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "ROS 2 Navigation tools: TUI + ros2cli commands for EasyNav.";
    license = with lib.licenses; [ asl20 ];
  };
}
