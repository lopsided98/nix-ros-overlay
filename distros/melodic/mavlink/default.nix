
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2021.7.7-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2021.7.7-1.tar.gz";
    name = "2021.7.7-1.tar.gz";
    sha256 = "ae5288afecde7eee8d675b9897c61d1c73c21c636ed87b9c9e08b6b7a022d018";
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
