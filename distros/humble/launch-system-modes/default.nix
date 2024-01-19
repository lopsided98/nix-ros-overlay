
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, osrf-pycommon, python3Packages, pythonPackages, rclpy, system-modes-msgs }:
buildRosPackage {
  pname = "ros-humble-launch-system-modes";
  version = "0.9.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/humble/launch_system_modes/0.9.0-6.tar.gz";
    name = "0.9.0-6.tar.gz";
    sha256 = "a2b13c940f3041b27a096c921a5d8bf88b399a2a2f0102848eaa942d44b959aa";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch osrf-pycommon python3Packages.importlib-metadata python3Packages.pyyaml rclpy system-modes-msgs ];

  meta = {
    description = ''System modes specific extensions to the launch tool, i.e. launch actions, events, and event
    handlers for system modes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
