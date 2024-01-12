
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml, tinyxml-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-iron-urdfdom";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/iron/urdfdom/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "49c8646992994961a2b0e921aa8a74e1c9269d79478c0691296f30c424d05342";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ python3 ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml tinyxml-vendor urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
