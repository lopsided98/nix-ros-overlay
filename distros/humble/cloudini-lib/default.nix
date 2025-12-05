
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, mcap-vendor, pcl-ros, zstd }:
buildRosPackage {
  pname = "ros-humble-cloudini-lib";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/humble/cloudini_lib/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "d2ea50af3cbff06d80254eba6520d19c23d268d78e69c0f555142660fab1c2f8";
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
