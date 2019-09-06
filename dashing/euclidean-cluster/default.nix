
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-pclint, autoware-auto-msgs, autoware-auto-geometry, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-euclidean-cluster";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/euclidean_cluster/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "fa7dbd87c5f1cf44b79b538a3eef127afad35427d8d940acc17f66726cc9bee4";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-auto-msgs autoware-auto-geometry lidar-utils ];
  checkInputs = [ ament-lint-common ament-cmake-pclint ];
  propagatedBuildInputs = [ autoware-auto-msgs autoware-auto-geometry ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''implementation of euclidean clustering'';
    license = with lib.licenses; [ asl20 ];
  };
}
