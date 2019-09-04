
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake, ament-lint-common, autoware-auto-cmake }:
buildRosPackage {
  pname = "ros-dashing-motion-model";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/motion_model/0.0.1-1;
    sha256 = "31b564a9ab3f17ba91bed5655b0562e2eb71d24d2e226d5306428f2984b6750f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-common ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''implementation of motion models for prediction'';
    license = with lib.licenses; [ asl20 ];
  };
}
