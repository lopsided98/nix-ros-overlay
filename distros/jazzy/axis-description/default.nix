
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-axis-description";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/jazzy/axis_description/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "0c352ce90322189f1dca08d5d3b399c14b4934750ed04a1e6a9e9244aa464a53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description package with URDF files for common Axis fixed and PTZ cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
