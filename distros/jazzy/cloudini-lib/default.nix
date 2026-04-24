
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, pcl, zstd }:
buildRosPackage {
  pname = "ros-jazzy-cloudini-lib";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/jazzy/cloudini_lib/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "575d6cce4ae6df0486f170264814608a52008dbdb32b56c6a18766dc7a7f1067";
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
