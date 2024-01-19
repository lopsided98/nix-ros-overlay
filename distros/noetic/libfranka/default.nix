
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-noetic-libfranka";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/noetic/libfranka/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "cdd15f0f3a4e032cb93c156240c122bea496a96e25a4ee434c9ca6c70da36fa3";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ catkin poco ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libfranka is a C++ library for Franka Emika research robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
