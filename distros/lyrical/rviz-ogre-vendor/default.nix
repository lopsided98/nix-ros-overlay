
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, freetype, glew, libGL, libGLU, libx11, libxaw, libxrandr }:
buildRosPackage {
  pname = "ros-lyrical-rviz-ogre-vendor";
  version = "15.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/lyrical/rviz_ogre_vendor/15.2.3-1.tar.gz";
    name = "15.2.3-1.tar.gz";
    sha256 = "ce27385c093022860253dff8ef5ede6afbaf4532e4fd4c3ac01e9c641c181fdc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ freetype glew libGL libGLU libx11 libxaw libxrandr ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
