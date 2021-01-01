
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-melodic-libfranka";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/melodic/libfranka/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "cd81ede59824257d1e44276b53d2c7282e5b60b904f8fe3fe7b4548dfff01c4e";
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
