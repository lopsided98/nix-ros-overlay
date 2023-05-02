
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-rolling-rviz-ogre-vendor";
  version = "12.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_ogre_vendor/12.5.0-2.tar.gz";
    name = "12.5.0-2.tar.gz";
    sha256 = "6076404046982d267f6a19b78d11296d75ba50a3f38c408b3572d16ff42ea5be";
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
