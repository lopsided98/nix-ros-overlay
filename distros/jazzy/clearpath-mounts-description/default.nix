
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-mounts-description";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_mounts_description/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "731734d0b909d7d04b7c04aaedcbfb4b65d0ce305387ed69ba55fe9706500c1e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath mounts URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
