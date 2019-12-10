
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, eigen }:
buildRosPackage {
  pname = "ros-dashing-hungarian-assigner";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/hungarian_assigner/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "7f831d5d070a933fc7cd18408e81b4152eb431053cbdc04a3abb19cc751a16ca";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''An implementation of the hungarian algorithm for optimal linear assignment'';
    license = with lib.licenses; [ asl20 ];
  };
}
