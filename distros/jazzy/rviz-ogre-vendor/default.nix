
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, freetype, glew, libGL, libGLU, libx11, libxaw, libxrandr }:
buildRosPackage {
  pname = "ros-jazzy-rviz-ogre-vendor";
  version = "14.1.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/rviz_ogre_vendor/14.1.21-1.tar.gz";
    name = "14.1.21-1.tar.gz";
    sha256 = "4042a78be8f31e57f093ed7db979eb82d95b427c5c5ae2df10599651d2ff12c9";
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
