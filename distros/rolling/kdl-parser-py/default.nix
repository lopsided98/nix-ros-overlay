
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-orocos-kdl-vendor, python3Packages, urdfdom-py }:
buildRosPackage {
  pname = "ros-rolling-kdl-parser-py";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser_py-release/archive/release/rolling/kdl_parser_py/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "c58665d3b4ba3021250bd2c3c4b5e534ca395b41459f97379d8ac195540acfa7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-orocos-kdl-vendor urdfdom-py ];

  meta = {
    description = "<tt>kdl_parser_py</tt> provides Python tools to construct a KDL
   tree from an XML robot representation in URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
