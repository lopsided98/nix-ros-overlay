
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-orocos-kdl-vendor, python3Packages, urdfdom-py }:
buildRosPackage {
  pname = "ros-rolling-kdl-parser-py";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser_py-release/archive/release/rolling/kdl_parser_py/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "7e986445a2602decd22a11682de74943ba443599b3dbaff82f2f6b2b323ea49f";
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
