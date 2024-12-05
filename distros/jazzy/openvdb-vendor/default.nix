
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, c-blosc, git, openvdb, tbb_2021_11, zlib }:
buildRosPackage {
  pname = "ros-jazzy-openvdb-vendor";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/jazzy/openvdb_vendor/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "4543872271f95933bcbfc0fbe8ca6892de3361dc06b8576a793b10b9c360d5ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  propagatedBuildInputs = [ boost c-blosc openvdb tbb_2021_11 zlib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Wrapper around OpenVDB, if not found on the system, will compile from source";
    license = with lib.licenses; [ "LGPL-2.1-only" "MPL-2.0-license" ];
  };
}
