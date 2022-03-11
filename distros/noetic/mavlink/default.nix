
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-mavlink";
  version = "2022.3.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/noetic/mavlink/2022.3.3-1.tar.gz";
    name = "2022.3.3-1.tar.gz";
    sha256 = "1b43282c412bb02003e41c25a1de724b1c1530b5fb4ec63cb561dcd77f48f223";
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
