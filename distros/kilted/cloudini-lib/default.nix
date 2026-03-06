
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, pcl, zstd }:
buildRosPackage {
  pname = "ros-kilted-cloudini-lib";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/kilted/cloudini_lib/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "49a61ba6a08d4f0af31a64462d7a263c73b15a9ca23b6481badc6f90c19a1bac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake lz4 zstd ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ pcl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Main library of Cloudini, the pointcloud compression library";
    license = with lib.licenses; [ asl20 ];
  };
}
