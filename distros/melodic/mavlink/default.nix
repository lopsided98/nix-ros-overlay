
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2021.2.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2021.2.2-1.tar.gz";
    name = "2021.2.2-1.tar.gz";
    sha256 = "95e1d03a2b9090fc2c68ce8fed55b8228e93c02743755f41e130e8659b8bac59";
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
