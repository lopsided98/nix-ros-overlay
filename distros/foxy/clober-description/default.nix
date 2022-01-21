
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, urdf }:
buildRosPackage {
  pname = "ros-foxy-clober-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1e604d8e0847695ccbfba8bcb36ea58e146ac3a68bbf2b70e1e4a3ad799f906d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
