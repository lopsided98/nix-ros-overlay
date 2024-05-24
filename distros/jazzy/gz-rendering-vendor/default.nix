
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, freeglut, freeimage, glew, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-ogre-next-vendor, gz-plugin-vendor, gz-utils-vendor, ogre1_9, util-linux, vulkan-loader, xorg }:
buildRosPackage {
  pname = "ros-jazzy-gz-rendering-vendor";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_rendering_vendor-release/archive/release/jazzy/gz_rendering_vendor/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "d27ab7776404a38a6b0294899b248e79477a7eb13b502c0b4ab7d4f058053c5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ freeglut freeimage glew gz-cmake-vendor gz-common-vendor gz-math-vendor gz-ogre-next-vendor gz-plugin-vendor gz-utils-vendor ogre1_9 util-linux vulkan-loader xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-rendering8 8.1.1

    Gazebo Rendering: Rendering library for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
