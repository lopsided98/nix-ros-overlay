
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-noetic-libfranka";
  version = "0.8.0-r4";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/noetic/libfranka/0.8.0-4.tar.gz";
    name = "0.8.0-4.tar.gz";
    sha256 = "57aa6bf7475f06a2446e18d34f59b3137037c376ec6c2d9fc08ecfdd914368cb";
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
