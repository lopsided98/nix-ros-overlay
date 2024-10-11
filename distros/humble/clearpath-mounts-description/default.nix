
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-clearpath-mounts-description";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_mounts_description/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "3de214307d713f2a62549d7f4751703faea3004269388bdf6c4410b6c34c7a1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath mounts URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
