
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, pcl, zstd }:
buildRosPackage {
  pname = "ros-humble-cloudini-lib";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/humble/cloudini_lib/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "8e0066f6ece1cb53111440e8a0d89f302e8ef07b65d43edc43ebce61d606c05b";
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
