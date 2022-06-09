
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, builtin-interfaces, python3Packages, pythonPackages, rclpy, rosidl-parser, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-grepros";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/suurjaak/grepros-release/archive/release/foxy/grepros/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "138aba5c7d32e7711febb964506dfa701d9ede55a0c1e45ffd873c1f2f40cc31";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.pyyaml rclpy rosidl-parser rosidl-runtime-py ];

  meta = {
    description = ''grep for ROS bag files and live topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
