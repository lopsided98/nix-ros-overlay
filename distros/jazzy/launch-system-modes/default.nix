
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, osrf-pycommon, python3Packages, rclpy, system-modes-msgs }:
buildRosPackage {
  pname = "ros-jazzy-launch-system-modes";
  version = "0.9.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/jazzy/launch_system_modes/0.9.0-6.tar.gz";
    name = "0.9.0-6.tar.gz";
    sha256 = "a6504cfe08888b1655756fa31044db508a46128f191fbea34fa512cb065ee9b9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch osrf-pycommon python3Packages.importlib-metadata python3Packages.pyyaml rclpy system-modes-msgs ];

  meta = {
    description = "System modes specific extensions to the launch tool, i.e. launch actions, events, and event
    handlers for system modes.";
    license = with lib.licenses; [ asl20 ];
  };
}
