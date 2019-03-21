
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-mavlink";
  version = "2019.3.3";

  src = fetchurl {
    url = https://github.com/mavlink/mavlink-gbp-release/archive/release/kinetic/mavlink/2019.3.3-0.tar.gz;
    sha256 = "bd8227c6d54233ef80a94f8fc5eac2195a3cd34bdc53133b4add8fd93d7db1b1";
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
