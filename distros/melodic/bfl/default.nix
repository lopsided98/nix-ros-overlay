
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, cppunit, ros }:
buildRosPackage {
  pname = "ros-melodic-bfl";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bfl-release/archive/release/melodic/bfl/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "7c4c61c15768d1cd276cdaaf9a9f5e3088f478383789ffec9fdee325dafc0990";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin cppunit ros ];
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
    license = with lib.licenses; [ "LGPL" ];
  };
}
