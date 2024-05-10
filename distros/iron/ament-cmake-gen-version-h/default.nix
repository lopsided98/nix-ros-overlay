
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-package }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-gen-version-h";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_gen_version_h/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "3873e9a44bd38aeeecbcea1e73bdd538bd7042c25178a090af72c76f68120990";
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
