
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-mavlink";
  version = "2019.12.12-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/kinetic/mavlink/2019.12.12-1.tar.gz";
    name = "2019.12.12-1.tar.gz";
    sha256 = "33694a829649bd10f4d0e469e382f2ab36e72b8fa8c25d5bd5bab5011e1df1bc";
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
