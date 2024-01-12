
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-package }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-gen-version-h";
  version = "1.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_gen_version_h/1.3.6-1.tar.gz";
    name = "1.3.6-1.tar.gz";
    sha256 = "3bd18a4573af8213d84ce550a63c5bfaddd56069112bcb4b4ec921748750b6e4";
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
