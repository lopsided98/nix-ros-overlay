
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-rolling-rviz-ogre-vendor";
  version = "12.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_ogre_vendor/12.2.0-1.tar.gz";
    name = "12.2.0-1.tar.gz";
    sha256 = "ad252d22a0bb20eb4be7c5ecf71fdd2c9013d409f2d00139b0d192f7f316181c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git pkg-config ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ freetype libGL libGLU xorg.libX11 xorg.libXaw xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
