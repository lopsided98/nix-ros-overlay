
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, builtin-interfaces, python3Packages, pythonPackages, rclpy, rosidl-parser, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-grepros";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/suurjaak/grepros-release/archive/release/foxy/grepros/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "458099985a6b8f212940f6cb4cfa52d116589d68f746373b65576a171f8d06e9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.pyyaml rclpy rosidl-parser rosidl-runtime-py ];

  meta = {
    description = ''grep for ROS bag files and live topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
