
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-config";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/lyrical/ecl_config/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "2a8ca7b4a68588831e53de76fde334c6a4ecafe923a16e67361050845d64251b";
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
