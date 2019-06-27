
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2019.6.7-r1";

  src = fetchurl {
    url = https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2019.6.7-1.tar.gz;
    sha256 = "8f0380037825a0889b5b414b31cf11de09f4b1fb9c9705fadb7174e53735d5cd";
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
