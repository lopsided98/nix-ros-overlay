
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdfdom-headers, tinyxml-vendor, console-bridge-vendor, cmake, tinyxml, console-bridge }:
buildRosPackage {
  pname = "ros-crystal-urdfdom";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/crystal/urdfdom/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "27275c8ea3647c50538c85816341e1de41618345e4b54b9d30314886f9525b89";
  };

  buildType = "cmake";
  buildInputs = [ urdfdom-headers tinyxml-vendor console-bridge-vendor tinyxml console-bridge ];
  propagatedBuildInputs = [ urdfdom-headers tinyxml-vendor console-bridge-vendor tinyxml console-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
