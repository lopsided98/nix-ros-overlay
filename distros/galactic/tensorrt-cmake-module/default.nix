
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-galactic-tensorrt-cmake-module";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/galactic/tensorrt_cmake_module/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "df27e5c5fd88a1ee3c38b767e61f8c73bc7332432cfd2aad87f93be1b593c39d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Exports a CMake module to find TensorRT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
