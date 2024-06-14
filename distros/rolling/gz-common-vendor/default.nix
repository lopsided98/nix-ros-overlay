
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, assimp, ffmpeg, freeimage, gdal, gts, gz-cmake-vendor, gz-math-vendor, gz-utils-vendor, tinyxml-2, util-linux }:
buildRosPackage {
  pname = "ros-rolling-gz-common-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_common_vendor-release/archive/release/rolling/gz_common_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3c8eb7e50d7494046acca8a43288daef0df4a0700d1d6db2d25a9555b6ba5152";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ assimp ffmpeg freeimage gdal gts gz-cmake-vendor gz-math-vendor gz-utils-vendor tinyxml-2 util-linux ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-common5 5.6.0

    Gazebo Common : AV, Graphics, Events, and much more.";
    license = with lib.licenses; [ asl20 ];
  };
}
