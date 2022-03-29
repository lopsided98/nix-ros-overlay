
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-noetic-libfranka";
  version = "0.9.0-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/noetic/libfranka/0.9.0-2.tar.gz";
    name = "0.9.0-2.tar.gz";
    sha256 = "50343f955f431915e488370fd0b278abf24d92db907ff3eb36ed11feda2f6b2a";
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
