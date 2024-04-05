
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-iron-rviz-ogre-vendor";
  version = "12.4.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/iron/rviz_ogre_vendor/12.4.7-1.tar.gz";
    name = "12.4.7-1.tar.gz";
    sha256 = "33642e85795846cfdc0e5f6e8e0a1c5c9b5c23e6191c004ff68b7716ca6d47c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git pkg-config ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ freetype libGL libGLU xorg.libX11 xorg.libXaw xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
