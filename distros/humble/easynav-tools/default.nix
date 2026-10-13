
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, builtin-interfaces, diagnostic-msgs, easynav-interfaces, easynav-support-py, geometry-msgs, nav-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-humble-easynav-tools";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/humble/easynav_tools/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "fb0624d96bd952464c0e3cc8df5fdf8efd0788ff4545c3f26583999db6ba9a8a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint builtin-interfaces nav-msgs python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python diagnostic-msgs easynav-interfaces easynav-support-py geometry-msgs python3Packages.platformdirs python3Packages.rich python3Packages.typing-extensions rcl-interfaces rclpy ros2cli rosidl-runtime-py std-msgs ];

  meta = {
    description = "ROS 2 Navigation tools: TUI + ros2cli commands for EasyNav.";
    license = with lib.licenses; [ asl20 ];
  };
}
