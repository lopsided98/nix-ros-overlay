
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, builtin-interfaces, python3Packages, pythonPackages, rclpy, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-grepros";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/suurjaak/grepros-release/archive/release/foxy/grepros/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "698f47b1e3da4fd7a892b4ca2eecbb8aeb326092f5e2a8e744ed5420df471f9b";
  };

  buildType = "catkin";
  checkInputs = [ ament-cmake-pytest pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.pyyaml rclpy rosidl-runtime-py ];

  meta = {
    description = ''grep for ROS bag files and live topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
