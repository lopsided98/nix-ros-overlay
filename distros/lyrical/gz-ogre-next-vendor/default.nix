
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, boost, freeimage, freetype, glslang, gz-cmake-vendor, libGL, libGLU, onetbb, poco, rapidjson, shaderc, tinyxml-2, vulkan-loader, xorg, zziplib }:
buildRosPackage {
  pname = "ros-lyrical-gz-ogre-next-vendor";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_ogre_next_vendor-release/archive/release/lyrical/gz_ogre_next_vendor/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "c35dc84aa78ebd6dd03278fe0f8d6de60c0cd3d0f91438465b8a4fa7c2ee5fa8";
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
