
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, udp-driver, velodyne-driver, sensor-msgs, autoware-auto-cmake, lidar-utils }:
buildRosPackage {
  pname = "ros-dashing-velodyne-node";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/velodyne_node/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "ac89bae97af5ad1bd08e8c05933bcd3d1689bf3ffd4a474a71b6b1fdb7de86b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ velodyne-driver sensor-msgs lidar-utils udp-driver ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ velodyne-driver sensor-msgs lidar-utils udp-driver ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''(Mostly) static memory implementation of a velodyne driver in one process'';
    license = with lib.licenses; [ asl20 ];
  };
}
