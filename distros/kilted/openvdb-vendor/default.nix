
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, bzip2, c-blosc, git, onetbb, openvdb, xz, zlib, zstd }:
buildRosPackage {
  pname = "ros-kilted-openvdb-vendor";
  version = "2.6.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/kilted/openvdb_vendor/2.6.2-1.tar.gz";
    name = "2.6.2-1.tar.gz";
    sha256 = "4e4ad22e8e4fa8add95b96a89144fbc83f76b895e1288455075fc21921996d44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  propagatedBuildInputs = [ boost bzip2 c-blosc onetbb openvdb xz zlib zstd ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Wrapper around OpenVDB, if not found on the system, will compile from source";
    license = with lib.licenses; [ "LGPL-2.1-only" "MPL-2.0-license" ];
  };
}
