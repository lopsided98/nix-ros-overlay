
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, freetype, git, glew, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-humble-rviz-ogre-vendor";
  version = "11.2.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/humble/rviz_ogre_vendor/11.2.19-1.tar.gz";
    name = "11.2.19-1.tar.gz";
    sha256 = "2b0a23aaecfb323379460014eb6f0c2ad2f3aa93f6c3c1769e235d6b512d4c03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git pkg-config ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ freetype glew libGL libGLU xorg.libX11 xorg.libXaw xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
