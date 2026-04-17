
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-mounts-description";
  version = "2.9.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_mounts_description/2.9.6-1.tar.gz";
    name = "2.9.6-1.tar.gz";
    sha256 = "c5283c90e71dfb59779bad2c5d7e5605f90d09f08083cabd8ee7f08da5c7bb42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath mounts URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
