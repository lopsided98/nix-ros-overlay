
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-conversions, orocos-kdl, cmake-modules, python-orocos-kdl, catkin, eigen, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf-conversions";
  version = "1.11.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry-release/archive/release/lunar/tf_conversions/1.11.9-0.tar.gz;
    sha256 = "f445a43badb7a4a164e7e05e8622cfa0a037bfa4b845f7e9ae95e6e8bebac2a5";
  };

  buildInputs = [ kdl-conversions cmake-modules orocos-kdl eigen tf geometry-msgs ];
  propagatedBuildInputs = [ kdl-conversions orocos-kdl eigen python-orocos-kdl tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a set of conversion functions to convert
common tf datatypes (point, vector, pose, etc) into semantically
identical datatypes used by other libraries. The conversion functions
make it easier for users of the transform library (tf) to work with
the datatype of their choice. Currently this package has support for
the Kinematics and Dynamics Library (KDL) and the Eigen matrix
library. This package is stable, and will get integrated into tf in
the next major release cycle (see roadmap).'';
    #license = lib.licenses.BSD;
  };
}
