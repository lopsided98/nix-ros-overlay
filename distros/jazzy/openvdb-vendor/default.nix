
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, c-blosc, git, openvdb, tbb_2021_11, zlib }:
buildRosPackage {
  pname = "ros-jazzy-openvdb-vendor";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/jazzy/openvdb_vendor/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "1f34babbbb76bb02f5cf718036b18c42e9338529b8f0d832b9e87366795dde5a";
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
