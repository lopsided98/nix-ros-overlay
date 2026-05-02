
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, osrf-pycommon, python3Packages, rclpy, system-modes-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-system-modes";
  version = "0.9.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/rolling/launch_system_modes/0.9.0-6.tar.gz";
    name = "0.9.0-6.tar.gz";
    sha256 = "fef40752cb93005e0025faa66a0ee04729a994aa29d76d7c003a8697a8051c43";
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
