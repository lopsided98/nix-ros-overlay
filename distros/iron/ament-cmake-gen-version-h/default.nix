
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-package }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-gen-version-h";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_gen_version_h/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "ea58b00c7d467436406c571449e75b369b3b704c091eca994ea151b0be68a553";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-package ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-package ];

  meta = {
    description = ''Generate a C header containing the version number of the package'';
    license = with lib.licenses; [ asl20 ];
  };
}
