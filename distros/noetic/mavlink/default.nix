
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-mavlink";
  version = "2024.6.6-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/noetic/mavlink/2024.6.6-1.tar.gz";
    name = "2024.6.6-1.tar.gz";
    sha256 = "6995c1f9be291948013d072b514ba6faa8929654225172edc6eae5888cf2f917";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.future python3Packages.lxml ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
