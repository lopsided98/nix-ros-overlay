
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-config";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/rolling/ecl_config/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "7c4238739887ff15a961e9474ead27bb1ec8c17db5db651eb835b6193328d4aa";
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
