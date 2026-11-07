
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-axis-description";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/jazzy/axis_description/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "fe7c51cf572dab6fe9c6b48bb4e20459bd3bee54a758b2bb52e6f5edd78ad35e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description package with URDF files for common Axis fixed and PTZ cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
