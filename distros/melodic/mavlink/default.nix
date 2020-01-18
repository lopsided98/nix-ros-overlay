
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2019.12.30-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2019.12.30-1.tar.gz";
    name = "2019.12.30-1.tar.gz";
    sha256 = "0476baf1a1238c4b914c1a0c98d7c69ff95ed6f28a8665528fa2b3c74e302c5a";
  };

  buildType = "cmake";
  buildInputs = [ pythonPackages.future pythonPackages.lxml ];
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
