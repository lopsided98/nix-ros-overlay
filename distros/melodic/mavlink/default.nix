
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2020.5.21-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2020.5.21-1.tar.gz";
    name = "2020.5.21-1.tar.gz";
    sha256 = "f7abeb7789efb15d6072cb4ef9e394d95abd26e18fd999604e4556a5b5728a7c";
  };

  buildType = "cmake";
  buildInputs = [ python pythonPackages.future pythonPackages.lxml ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
