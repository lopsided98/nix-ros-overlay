
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, python3, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-foxy-mavlink";
  version = "2022.2.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/foxy/mavlink/2022.2.2-1.tar.gz";
    name = "2022.2.2-1.tar.gz";
    sha256 = "07bdc61dcb7bc8bef637b6c0f7bfe17ff0569264cf6ad4aeafc682eac89853c0";
  };

  buildType = "cmake";
  buildInputs = [ python3 python3Packages.future python3Packages.lxml ];
  nativeBuildInputs = [ ament-cmake cmake ros-environment ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
