
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-urdfdom-headers";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/jazzy/urdfdom_headers/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "6eb8d5ab496296dc3f31fd0d59bb64728652f8bb6a16c250284026b853c02cc4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ headers for URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
