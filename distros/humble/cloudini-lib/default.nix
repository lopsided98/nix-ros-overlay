
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, pcl, zstd }:
buildRosPackage {
  pname = "ros-humble-cloudini-lib";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/humble/cloudini_lib/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "3e7b536f3609c19b48c22747286509a792ff477ee56bbbc4c66aecde836ffd24";
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
