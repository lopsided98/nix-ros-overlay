
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-axis-description";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/jazzy/axis_description/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "69870f1046932ceb59d54f12e57a99ba04d3a95fcc3aa71b9fd6be4a4124717d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description package with URDF files for common Axis fixed and PTZ cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
