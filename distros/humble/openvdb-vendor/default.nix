
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, git, tbb_2021_8, zlib }:
buildRosPackage {
  pname = "ros-humble-openvdb-vendor";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/humble/openvdb_vendor/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "fb20e40ba65c9b7889801c8443724d051ff887e3951324ceb319fc0c1cb583af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  propagatedBuildInputs = [ boost tbb_2021_8 zlib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Wrapper around OpenVDB, if not found on the system, will compile from source";
    license = with lib.licenses; [ "LGPL-2.1-only" "MPL-2.0-license" ];
  };
}
