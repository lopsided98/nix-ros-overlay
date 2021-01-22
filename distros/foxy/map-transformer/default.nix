
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-map-transformer";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/map_transformer-release/archive/release/foxy/map_transformer/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "eddb4d0a104dc199e614fd490355515e26c6575152ad5b1ed6b55834693c7be4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Transform points between maps with non-linear relationships'';
    license = with lib.licenses; [ asl20 ];
  };
}
