
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-urdfdom-headers";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/kilted/urdfdom_headers/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "afbfc081bdd083a9c9c3d08dce4cd0bfcdf5a5392e2273314fd1ec952c3a064d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ headers for URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
