
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, opencv, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-foxy-map-transformer";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/map_transformer-release/archive/release/foxy/map_transformer/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d9f8ccf5a5879fa8965b65fa6f65b1d33503deb694b910eba3cd5ded46bff5ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Transform points between maps with non-linear relationships'';
    license = with lib.licenses; [ asl20 ];
  };
}
