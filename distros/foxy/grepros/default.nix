
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, builtin-interfaces, python3Packages, pythonPackages, rclpy, rosidl-parser, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-grepros";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/suurjaak/grepros-release/archive/release/foxy/grepros/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "fee5e4face7dbfba341b71f0e54d0216be6c2ae33615c36fc368251f38327cb4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.pyyaml rclpy rosidl-parser rosidl-runtime-py ];

  meta = {
    description = ''grep for ROS bag files and live topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
