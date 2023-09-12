
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-joy-tester";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/foxy/joy_tester/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "47af266b93b3ba2971f9b64368367a669cfc49ae5393f547e269abf47d7248fe";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = ''Simple GUI tool for testing joysticks/gamepads'';
    license = with lib.licenses; [ asl20 ];
  };
}
