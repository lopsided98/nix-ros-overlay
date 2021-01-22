
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-p2os-doc";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_doc/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "658e17590a8a326ecd6f5ede5c8def7b2bc064fea7e02271c1bc84f652e056d6";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the Documentation for the p2os driver/componenets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
