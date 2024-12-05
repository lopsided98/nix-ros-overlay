
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-axis-description";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/jazzy/axis_description/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "4dad14440a3217c07c59c75e4b8f0ecd4efeec079f2855ad856fcb7910a217bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description package with URDF files for common Axis fixed and PTZ cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
