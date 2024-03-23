
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-config";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/rolling/ecl_config/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "9a7a140ec3f6b01d6913539c18aeccc70df565a0affdf2375d054f0cea61d670";
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
