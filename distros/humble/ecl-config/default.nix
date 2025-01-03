
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-config";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/humble/ecl_config/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "0ce2113f9b178a4ba419c1ed25c350870d596374a2e739fdaafc971b49a53573";
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
