
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-humble-sol-vendor";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sol_vendor-release/archive/release/humble/sol_vendor/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "d751da2bdf38b3e773e2c1d72b1042f828763efa89128584924dca4dee2cef54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''vendor package for the sol2 library'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
