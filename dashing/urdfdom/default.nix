
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tinyxml, console-bridge-vendor, urdfdom-headers, console-bridge, tinyxml-vendor, cmake }:
buildRosPackage rec {
  pname = "ros-dashing-urdfdom";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/dashing/urdfdom/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "16e6c1523b30defd43c573049c0fcc793ac8395758527600f122c33627ccb5f0";
  };

  buildType = "cmake";
  buildInputs = [ tinyxml console-bridge-vendor urdfdom-headers console-bridge tinyxml-vendor ];
  propagatedBuildInputs = [ console-bridge-vendor tinyxml urdfdom-headers console-bridge tinyxml-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
