
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2019.8.8-r1";

  src = fetchurl {
    url = https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2019.8.8-1.tar.gz;
    sha256 = "a107159b029dfdeae317ad467417ce66eb3508ea1caf75fe0bb4d2a4e142f9c4";
  };

  buildInputs = [ pythonPackages.future python pythonPackages.lxml pythonPackages.setuptools ];
  propagatedBuildInputs = [ python catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
