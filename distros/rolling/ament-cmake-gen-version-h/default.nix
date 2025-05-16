
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-package }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gen-version-h";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_gen_version_h/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "fb696d110869ab54d568560854eb380bded61835f95b5db2e25872285b6f491b";
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
