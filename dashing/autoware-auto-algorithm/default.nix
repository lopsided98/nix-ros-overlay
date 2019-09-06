
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoware-auto-cmake, ament-lint-common, ament-cmake-pclint }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-algorithm";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_algorithm/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "39abea7f00e6368920754b5d9414fe719d8159c282db3d29cda03f7f8301b65f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-pclint ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Generic algorithms like sort'';
    license = with lib.licenses; [ asl20 ];
  };
}
