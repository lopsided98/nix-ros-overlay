
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, boost, freeimage, freetype, glslang, gz-cmake-vendor, libGL, libGLU, onetbb, poco, rapidjson, shaderc, tinyxml-2, vulkan-loader, xorg, zziplib }:
buildRosPackage {
  pname = "ros-rolling-gz-ogre-next-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_ogre_next_vendor-release/archive/release/rolling/gz_ogre_next_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "9d837473af44f74562f56b1cb3c17af76dc8535f0b4325ce9cb0612ba2a8f34c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package gz-cmake-vendor ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ SDL2 boost freeimage freetype glslang libGL libGLU onetbb poco rapidjson shaderc tinyxml-2 vulkan-loader xorg.libX11 xorg.libXaw xorg.libXrandr xorg.libxcb zziplib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for Ogre-next v2.3.3";
    license = with lib.licenses; [ asl20 mit ];
  };
}
