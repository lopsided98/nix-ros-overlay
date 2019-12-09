
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, python, pythonPackages, catkin }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2019.11.11-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2019.11.11-1.tar.gz";
    name = "2019.11.11-1.tar.gz";
    sha256 = "3dfeb366675dfdf90af26e764e82a8c22922ac06b6adf7890f380454db5aca8a";
  };

  buildType = "cmake";
  buildInputs = [ pythonPackages.lxml pythonPackages.future python pythonPackages.setuptools ];
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
