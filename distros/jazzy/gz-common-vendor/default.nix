
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, assimp, cmake, ffmpeg, freeimage, gdal, gts, gz-cmake-vendor, gz-math-vendor, gz-utils-vendor, pkg-config, tinyxml-2, util-linux }:
buildRosPackage {
  pname = "ros-jazzy-gz-common-vendor";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_common_vendor-release/archive/release/jazzy/gz_common_vendor/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "9f9885463f651f9cdf99dfc5a1c05cc96cee56cb3037221c65f834a66ed556ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ assimp ffmpeg freeimage gdal gts gz-cmake-vendor gz-math-vendor gz-utils-vendor tinyxml-2 util-linux ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];

  meta = {
    description = "Vendor package for: gz-common5 5.7.0

    Gazebo Common : AV, Graphics, Events, and much more.";
    license = with lib.licenses; [ asl20 ];
  };
}
