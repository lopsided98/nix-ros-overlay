
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-mavlink";
  version = "2022.2.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/noetic/mavlink/2022.2.2-1.tar.gz";
    name = "2022.2.2-1.tar.gz";
    sha256 = "631d98097760a71fc92d2d06020c15d5a3250d96aeb3b366988108ef97f2faf5";
  };

  buildType = "cmake";
  buildInputs = [ python3 python3Packages.future python3Packages.lxml ];
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
