
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, c-blosc, git, onetbb, openvdb, zlib }:
buildRosPackage {
  pname = "ros-kilted-openvdb-vendor";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/kilted/openvdb_vendor/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "f13929203fd1a63a61366fed16509b0115e94676aa330822d96e7f1caf213316";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  propagatedBuildInputs = [ boost c-blosc onetbb openvdb zlib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Wrapper around OpenVDB, if not found on the system, will compile from source";
    license = with lib.licenses; [ "LGPL-2.1-only" "MPL-2.0-license" ];
  };
}
