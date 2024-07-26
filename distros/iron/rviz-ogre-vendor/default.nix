
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-iron-rviz-ogre-vendor";
  version = "12.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/iron/rviz_ogre_vendor/12.4.8-1.tar.gz";
    name = "12.4.8-1.tar.gz";
    sha256 = "6a5dddfd3c607858b399d67dc79f2857e8551d2e8895cfa81caf550084361b6d";
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
