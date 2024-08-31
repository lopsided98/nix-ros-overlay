
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, c-blosc, git, openvdb, tbb_2021_11, zlib }:
buildRosPackage {
  pname = "ros-jazzy-openvdb-vendor";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/jazzy/openvdb_vendor/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "386beb08033aed6d988e22f7ac8bed8fc237e3526742c8d6e6b27e94138d25b3";
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
