
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-p2os-doc";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/lunar/p2os_doc/2.1.0-0.tar.gz;
    sha256 = "e5256a6aa8160393cd091c3d4a9bfe29d80b13f408214e582eef4928b8812c86";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the Documentation for the p2os driver/componenets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
