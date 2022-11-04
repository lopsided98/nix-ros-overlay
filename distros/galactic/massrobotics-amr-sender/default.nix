
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, common-interfaces, python3Packages, pythonPackages, rclpy, tf2-kdl }:
buildRosPackage {
  pname = "ros-galactic-massrobotics-amr-sender";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/galactic/massrobotics_amr_sender/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "8c675fccc204fabcd3906b327bbf15a9a76142e9592f00962269936c513a4963";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 common-interfaces python3Packages.jsonschema python3Packages.mock python3Packages.pep8 python3Packages.pytest-mock python3Packages.pyyaml pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pykdl python3Packages.websockets rclpy tf2-kdl ];

  meta = {
    description = ''MassRobotics AMR Interop Sender'';
    license = with lib.licenses; [ "3-Clause-BSD-License" ];
  };
}
