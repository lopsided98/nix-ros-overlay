
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, c-blosc, git, tbb_2021_8, zlib }:
buildRosPackage {
  pname = "ros-iron-openvdb-vendor";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/iron/openvdb_vendor/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "60f1ffaa1b9385f402e866181c60bdf90364c0d36c9f3b2a8613aafc88d9be83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  propagatedBuildInputs = [ boost c-blosc tbb_2021_8 zlib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Wrapper around OpenVDB, if not found on the system, will compile from source";
    license = with lib.licenses; [ "LGPL-2.1-only" "MPL-2.0-license" ];
  };
}
