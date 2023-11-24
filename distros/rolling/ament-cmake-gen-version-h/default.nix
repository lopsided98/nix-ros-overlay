
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-package }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gen-version-h";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_gen_version_h/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "ea6ecc9f27f1855cb0b663a7a18c08671deff680d40fb66ad083e997e84856f1";
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
