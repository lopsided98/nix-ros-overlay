
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, console-bridge, console-bridge-vendor, tinyxml2-vendor, urdf, urdfdom-headers, urdfdom-py }:
buildRosPackage {
  pname = "ros-foxy-srdfdom";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/srdfdom-release/archive/release/foxy/srdfdom/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d2b1e382c6119373ddbffbd39e0ca88a7f93d2e546c08cc81b9cfa22b6ff0ddb";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost urdfdom-headers ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml2-vendor urdf urdfdom-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
