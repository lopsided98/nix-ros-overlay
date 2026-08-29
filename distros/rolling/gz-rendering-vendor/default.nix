
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, freeglut, glew, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-ogre-next-vendor, gz-plugin-vendor, gz-utils-vendor, libGL, libGLU, libxi, libxmu, ogre1_9, util-linux, vulkan-loader, xorg }:
buildRosPackage {
  pname = "ros-rolling-gz-rendering-vendor";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_rendering_vendor-release/archive/release/rolling/gz_rendering_vendor/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "0310023af988096996648766b156eda7b06dcfcd4b0ee085f5967a32ba407995";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ freeglut glew gz-cmake-vendor gz-common-vendor gz-math-vendor gz-ogre-next-vendor gz-plugin-vendor gz-utils-vendor libGL libGLU libxi libxmu ogre1_9 util-linux vulkan-loader ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-rendering 11.0.0

    Gazebo Rendering: Rendering library for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
