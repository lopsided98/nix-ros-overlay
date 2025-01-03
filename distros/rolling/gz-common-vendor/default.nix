
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, assimp, cmake, ffmpeg, freeimage, gdal, gz-cmake-vendor, gz-math-vendor, gz-utils-vendor, pkg-config, spdlog-vendor, tinyxml-2, util-linux }:
buildRosPackage {
  pname = "ros-rolling-gz-common-vendor";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_common_vendor-release/archive/release/rolling/gz_common_vendor/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "d28d765144b93207e6400aa458bbabff6c363e89cd781be6c68999c4835c33d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ assimp ffmpeg freeimage gdal gz-cmake-vendor gz-math-vendor gz-utils-vendor spdlog-vendor tinyxml-2 util-linux ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];

  meta = {
    description = "Vendor package for: gz-common6 6.0.1

    Gazebo Common : AV, Graphics, Events, and much more.";
    license = with lib.licenses; [ asl20 ];
  };
}
