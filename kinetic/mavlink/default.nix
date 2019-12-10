
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-mavlink";
  version = "2019.11.11-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/kinetic/mavlink/2019.11.11-1.tar.gz";
    name = "2019.11.11-1.tar.gz";
    sha256 = "f92fa26efd2a54744f0950af5ff536968f3ac00f75703696899db70851d25790";
  };

  buildType = "cmake";
  buildInputs = [ pythonPackages.future pythonPackages.lxml pythonPackages.setuptools ];
  propagatedBuildInputs = [ catkin python ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
