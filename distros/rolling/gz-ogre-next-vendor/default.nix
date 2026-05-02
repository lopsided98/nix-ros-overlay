
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, boost, freeimage, freetype, glslang, gz-cmake-vendor, libGL, libGLU, onetbb, poco, rapidjson, shaderc, tinyxml-2, vulkan-loader, xorg, zziplib }:
buildRosPackage {
  pname = "ros-rolling-gz-ogre-next-vendor";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_ogre_next_vendor-release/archive/release/rolling/gz_ogre_next_vendor/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "b959c479cb49c954f90be09f4f5c7a2c7ff3a1b6854cbde1fae62652dffb75dd";
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
