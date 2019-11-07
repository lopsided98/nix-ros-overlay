
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, ament-lint-auto, autoware-auto-cmake }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-algorithm";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_algorithm/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "334f6c5e56dde2f169a87791046a90fc89900ae99d95b687c4210272229d4730";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Generic algorithms like sort'';
    license = with lib.licenses; [ asl20 ];
  };
}
