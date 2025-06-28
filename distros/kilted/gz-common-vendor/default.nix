
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, assimp, cmake, ffmpeg, freeimage, gdal, gz-cmake-vendor, gz-math-vendor, gz-utils-vendor, pkg-config, spdlog-vendor, tinyxml-2, util-linux }:
buildRosPackage {
  pname = "ros-kilted-gz-common-vendor";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_common_vendor-release/archive/release/kilted/gz_common_vendor/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "cfbc8db6014b528a687edf3c92b6de0d78cf51ca20b3898d72e4ba1007dfc3a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ assimp ffmpeg freeimage gdal gz-cmake-vendor gz-math-vendor gz-utils-vendor spdlog-vendor tinyxml-2 util-linux ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];

  meta = {
    description = "Vendor package for: gz-common6 6.0.2

    Gazebo Common : AV, Graphics, Events, and much more.";
    license = with lib.licenses; [ asl20 ];
  };
}
