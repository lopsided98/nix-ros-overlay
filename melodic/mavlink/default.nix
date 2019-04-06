
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2019.4.4";

  src = fetchurl {
    url = https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2019.4.4-0.tar.gz;
    sha256 = "ae60116d328ad383dfd3bfe663586b9c39241b44ae58dc502d15a44cc5a30930";
  };

  propagatedBuildInputs = [ python catkin ];
  nativeBuildInputs = [ python pythonPackages.lxml pythonPackages.future cmake pythonPackages.setuptools ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    #license = lib.licenses.LGPLv3;
  };
}
