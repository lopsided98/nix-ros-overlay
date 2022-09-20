
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-cmake, boost, console-bridge, console-bridge-vendor, tinyxml2-vendor, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-foxy-srdfdom";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/srdfdom-release/archive/release/foxy/srdfdom/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "fcc96f1c6ef4ce5070a873bb588749215eb2ee5faeb1034610da72ebf0e4670f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost urdfdom-headers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml2-vendor urdf urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
