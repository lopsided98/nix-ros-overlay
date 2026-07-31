
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-package }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-gen-version-h";
  version = "2.8.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_gen_version_h/2.8.8-1.tar.gz";
    name = "2.8.8-1.tar.gz";
    sha256 = "d2b8a61425a4dd8bc035fec481f36a8532e08094c9d0f7867e226486396a4d79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-package ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-package ];

  meta = {
    description = "Generate a C header containing the version number of the package";
    license = with lib.licenses; [ asl20 ];
  };
}
