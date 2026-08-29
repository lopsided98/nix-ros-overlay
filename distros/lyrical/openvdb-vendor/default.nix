
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, bzip2, c-blosc, git, onetbb, openvdb, xz, zlib, zstd }:
buildRosPackage {
  pname = "ros-lyrical-openvdb-vendor";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/lyrical/openvdb_vendor/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "4c67c11634c78a6658d74068872a62114f0af2e11e66950c5e9f3bc8f7e45dba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  propagatedBuildInputs = [ boost bzip2 c-blosc onetbb openvdb xz zlib zstd ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Wrapper around OpenVDB, if not found on the system, will compile from source";
    license = with lib.licenses; [ lgpl21Only mpl20 ];
  };
}
