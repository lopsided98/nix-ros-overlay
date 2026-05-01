
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-orocos-kdl-vendor, python3Packages, urdfdom-py }:
buildRosPackage {
  pname = "ros-lyrical-kdl-parser-py";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser_py-release/archive/release/lyrical/kdl_parser_py/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "778401ca6d52c8c05a9f41719e4a62ecb203346244dd877ed0ea1d9a69cbb5a6";
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
