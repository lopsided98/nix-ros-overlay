
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto, autoware-auto-cmake, eigen, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-hungarian-assigner";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/hungarian_assigner/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "7f831d5d070a933fc7cd18408e81b4152eb431053cbdc04a3abb19cc751a16ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''An implementation of the hungarian algorithm for optimal linear assignment'';
    license = with lib.licenses; [ asl20 ];
  };
}
