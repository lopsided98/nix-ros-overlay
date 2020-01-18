
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-kinetic-libfranka";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/kinetic/libfranka/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "9d5b667fcc4238a81e88ca0ec116d1bfcb167f4967a23ac03e374abce7903fd7";
  };

  buildType = "cmake";
  buildInputs = [ eigen ];
  propagatedBuildInputs = [ catkin poco ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libfranka is a C++ library for Franka Emika research robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
