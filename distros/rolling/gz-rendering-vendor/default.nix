
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, freeglut, freeimage, glew, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-ogre-next-vendor, gz-plugin-vendor, gz-utils-vendor, ogre1_9, util-linux, vulkan-loader, xorg }:
buildRosPackage {
  pname = "ros-rolling-gz-rendering-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_rendering_vendor-release/archive/release/rolling/gz_rendering_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "2e961313a269e2f4426b6ff55dedc59eeafa262b212d7ccc0614fe47c7fc892d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ freeglut freeimage glew gz-cmake-vendor gz-common-vendor gz-math-vendor gz-ogre-next-vendor gz-plugin-vendor gz-utils-vendor ogre1_9 util-linux vulkan-loader xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-rendering9 9.0.0

    Gazebo Rendering: Rendering library for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
