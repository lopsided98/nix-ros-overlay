
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-mavlink";
  version = "2019.4.4";

  src = fetchurl {
    url = https://github.com/mavlink/mavlink-gbp-release/archive/release/lunar/mavlink/2019.4.4-0.tar.gz;
    sha256 = "14cc7c785081dcc67c250915a843b6b3b56537a3a36f01759893fb8498c87bb7";
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
