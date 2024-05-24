
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, c-blosc, git, tbb_2021_8, zlib }:
buildRosPackage {
  pname = "ros-humble-openvdb-vendor";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/humble/openvdb_vendor/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "56527b4a132dba7a4dd49d81046785d4d00c1210929ece105eff775662ade5b9";
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
