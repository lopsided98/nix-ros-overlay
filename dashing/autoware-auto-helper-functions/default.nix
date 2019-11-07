
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, ament-lint-auto, autoware-auto-cmake }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-helper-functions";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_helper_functions/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "bf2db81d0b797796ce8e3bb06c7988f892bd7e23197e58d5740c6ddf0355eb5e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Miscelaneous helper functions'';
    license = with lib.licenses; [ asl20 ];
  };
}
