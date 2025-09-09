
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, assimp, cmake, ffmpeg, freeimage, gdal, gz-cmake-vendor, gz-math-vendor, gz-utils-vendor, pkg-config, spdlog-vendor, tinyxml-2, util-linux }:
buildRosPackage {
  pname = "ros-kilted-gz-common-vendor";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_common_vendor-release/archive/release/kilted/gz_common_vendor/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "07fae9488afe0647234b4793191c8ee5eec49a72cc48ac6f9177e8709c6aafd9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ assimp ffmpeg freeimage gdal gz-cmake-vendor gz-math-vendor gz-utils-vendor spdlog-vendor tinyxml-2 util-linux ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];

  meta = {
    description = "Vendor package for: gz-common6 6.1.0

    Gazebo Common : AV, Graphics, Events, and much more.";
    license = with lib.licenses; [ asl20 ];
  };
}
