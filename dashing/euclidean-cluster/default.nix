
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, autoware-auto-msgs, autoware-auto-geometry, ament-lint-auto, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-euclidean-cluster";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/euclidean_cluster/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "837a00e21a4ee8bfe36c91ada15f1449c4481132def6b825a7bc8f3000426755";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-auto-msgs autoware-auto-geometry lidar-utils ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ autoware-auto-msgs autoware-auto-geometry ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''implementation of euclidean clustering'';
    license = with lib.licenses; [ asl20 ];
  };
}
