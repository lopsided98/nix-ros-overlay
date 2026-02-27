
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, mcap-vendor, pcl, zstd }:
buildRosPackage {
  pname = "ros-rolling-cloudini-lib";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/rolling/cloudini_lib/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9a0291f70c53bc1c5acfec22b8e52cc9bd5e11de4932b082a930b25e5fe6ec32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ lz4 mcap-vendor pcl zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Main library of Cloudini, the pointcloud compression library";
    license = with lib.licenses; [ asl20 ];
  };
}
