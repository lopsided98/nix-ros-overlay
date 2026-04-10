
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, pcl, zstd }:
buildRosPackage {
  pname = "ros-rolling-cloudini-lib";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/rolling/cloudini_lib/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "9af3d38293dda7122c355b49ec2e4a41a5cb8f63e5e70ebb3f4fe456818089bb";
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
