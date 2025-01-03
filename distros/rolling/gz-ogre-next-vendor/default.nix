
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, boost, freeimage, freetype, glslang, libGL, libGLU, poco, rapidjson, shaderc, tbb_2021_11, tinyxml-2, vulkan-loader, xorg, zziplib }:
buildRosPackage {
  pname = "ros-rolling-gz-ogre-next-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_ogre_next_vendor-release/archive/release/rolling/gz_ogre_next_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "707d667ed9c6f166d7b16382e21e16787a2e5798b18ee912afa08a014b0cd097";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ SDL2 boost freeimage freetype glslang libGL libGLU poco rapidjson shaderc tbb_2021_11 tinyxml-2 vulkan-loader xorg.libX11 xorg.libXaw xorg.libXrandr xorg.libxcb zziplib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for Ogre-next v2.3.3";
    license = with lib.licenses; [ asl20 mit ];
  };
}
