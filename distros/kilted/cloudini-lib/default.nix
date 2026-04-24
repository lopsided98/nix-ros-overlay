
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, pcl, zstd }:
buildRosPackage {
  pname = "ros-kilted-cloudini-lib";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/kilted/cloudini_lib/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "dbdccdec0b75c595e1e1fdb9e19ba47fbc3000bfca589783e214a8dce256c70e";
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
