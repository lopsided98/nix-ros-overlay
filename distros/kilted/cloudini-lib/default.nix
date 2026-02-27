
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, lz4, mcap-vendor, pcl, zstd }:
buildRosPackage {
  pname = "ros-kilted-cloudini-lib";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/cloudini-release/archive/release/kilted/cloudini_lib/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "34ae174fd6528e27877601735deb15ebd493a36f1335409b351b9797fdee607c";
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
