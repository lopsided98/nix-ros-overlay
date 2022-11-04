
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-melodic-libfranka";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/melodic/libfranka/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "777d6d9868cacdedcf85f08d5a89c5e8a88b6fd13c86c82774104b9a91e44ad2";
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
