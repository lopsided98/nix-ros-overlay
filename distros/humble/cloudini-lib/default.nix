
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, mcap-vendor, pcl-ros, zstd }:
buildRosPackage {
  pname = "ros-humble-cloudini-lib";
  version = "0.11.1-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/humble/cloudini_lib/0.11.1-2.tar.gz";
    name = "0.11.1-2.tar.gz";
    sha256 = "3ef3d873251442e911cd2232ae724a155bc553ade35c2fcbc00219696ca36a2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ lz4 mcap-vendor pcl-ros zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Main library of Cloudini, the pointcloud compression library";
    license = with lib.licenses; [ asl20 ];
  };
}
