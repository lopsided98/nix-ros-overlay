
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-config";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/kilted/ecl_config/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "2170c2d90bd8efd645a8f61591542e43aca1a672da5023bb9683dcdbc64dbe7c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "These tools inspect and describe your system with macros, types
     and functions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
