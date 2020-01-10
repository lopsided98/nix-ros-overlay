
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, tinyxml, tinyxml-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-crystal-urdfdom";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/crystal/urdfdom/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "27275c8ea3647c50538c85816341e1de41618345e4b54b9d30314886f9525b89";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml tinyxml-vendor urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
