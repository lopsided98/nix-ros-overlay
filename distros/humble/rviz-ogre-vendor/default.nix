
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, freetype, git, glew, libGL, libGLU, libx11, libxaw, libxrandr, pkg-config }:
buildRosPackage {
  pname = "ros-humble-rviz-ogre-vendor";
  version = "11.2.30-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/humble/rviz_ogre_vendor/11.2.30-1.tar.gz";
    name = "11.2.30-1.tar.gz";
    sha256 = "04eb881b7f1ad12c77a3297cc5559ec1a483a60d8c87ff11cde5d04536195fab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git pkg-config ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ freetype glew libGL libGLU libx11 libxaw libxrandr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
