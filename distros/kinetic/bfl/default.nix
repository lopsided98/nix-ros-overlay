
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, cppunit }:
buildRosPackage {
  pname = "ros-kinetic-bfl";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bfl-release/archive/release/kinetic/bfl/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "54d9c8ae3cd477fa0a413e2100233e5f450760df4ad7dd8f63723889d913cea6";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin cppunit ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains a recent version of the Bayesian Filtering
  Library (BFL), distributed by the Orocos Project.  For stability
  reasons, this package is currently locked to revision 31655 (April
  19, 2010), but this revision will be updated on a regular basis to
  the latest available BFL trunk.  This ROS package does not modify
  BFL in any way, it simply provides a convenient way to download and
  compile the library, because BFL is not available from an OS package
  manager.  This ROS package compiles BFL with the Boost library for
  matrix operations and random number generation.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
