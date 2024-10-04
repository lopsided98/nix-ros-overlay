
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, assimp, ffmpeg, freeimage, gdal, gz-cmake-vendor, gz-math-vendor, gz-utils-vendor, spdlog-vendor, tinyxml-2, util-linux }:
buildRosPackage {
  pname = "ros-rolling-gz-common-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_common_vendor-release/archive/release/rolling/gz_common_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "94f743708626fdac4d263a846f2f371b25f3db094e8a16a9cd1ba3c128c836be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ assimp ffmpeg freeimage gdal gz-cmake-vendor gz-math-vendor gz-utils-vendor spdlog-vendor tinyxml-2 util-linux ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-common6 6.0.0

    Gazebo Common : AV, Graphics, Events, and much more.";
    license = with lib.licenses; [ asl20 ];
  };
}
