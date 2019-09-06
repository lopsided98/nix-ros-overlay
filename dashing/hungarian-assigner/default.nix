
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake, ament-lint-common, autoware-auto-cmake }:
buildRosPackage rec {
  pname = "ros-dashing-hungarian-assigner";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/hungarian_assigner/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "828e9715ded82cc1452c751a8d51742f3d6e630d0b6e83d87fe5e30b77cebd92";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-common ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''An implementation of the hungarian algorithm for optimal linear assignment'';
    license = with lib.licenses; [ asl20 ];
  };
}
