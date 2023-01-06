
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, osrf-pycommon, python3Packages, pythonPackages, rclpy, system-modes-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-system-modes";
  version = "0.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/rolling/launch_system_modes/0.9.0-3.tar.gz";
    name = "0.9.0-3.tar.gz";
    sha256 = "ee0eceaf6bf5918dd4c78f3b914d64d5ca9aa806db06775eac91d2804630136f";
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
