
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-keyboard, cl-ros2-timer, plasma5Packages, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-cl-keyboard-unit-test-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_cl_keyboard_unit_test_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "b0558fa3168bcfb33002b70704ae9e64cd7d0f1008f194e502b653edb40c2177";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-keyboard cl-ros2-timer plasma5Packages.konsole smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_cl_keyboard_unit_test_1 package";
    license = with lib.licenses; [ asl20 ];
  };
}
