
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-conversions, orocos-kdl, python-orocos-kdl, catkin, eigen, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf-conversions";
  version = "1.12.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/melodic/tf_conversions/1.12.0-0.tar.gz";
    name = "1.12.0-0.tar.gz";
    sha256 = "eec87e068f5106c1835fb093d5995ca8c6972e3a5e127038d94c68701ad2029e";
  };

  buildType = "catkin";
  buildInputs = [ kdl-conversions orocos-kdl eigen tf geometry-msgs ];
  propagatedBuildInputs = [ kdl-conversions orocos-kdl python-orocos-kdl eigen tf geometry-msgs ];
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
