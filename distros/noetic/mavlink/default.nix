
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-mavlink";
  version = "2020.6.6-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/noetic/mavlink/2020.6.6-1.tar.gz";
    name = "2020.6.6-1.tar.gz";
    sha256 = "42e149b8d0f0b1ee3b091f87e0e8d1932e493f3c0f56c1ff97d87d39fa2c6b70";
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
