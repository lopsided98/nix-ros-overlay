
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, pcl, zstd }:
buildRosPackage {
  pname = "ros-rolling-cloudini-lib";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/rolling/cloudini_lib/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "204f644e845267736e9f4db85a1aa3ce0ca96764c53289b3c1ee760d77a95138";
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
