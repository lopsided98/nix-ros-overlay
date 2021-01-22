
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-kinetic-libfranka";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/kinetic/libfranka/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "b3163c8d21ac6b05c865b761556608b2f8c3b4b6fdb5a1a2a72fe49473d99e04";
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
