
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core, tobas-drone-msgs, tobas-drone-msgs-adapter, tobas-drone-server, tobas-drone-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "2c7a244def52a83e83c2106d5dd3e12728de7830f4df51778abdd70111048171";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-core tobas-drone-msgs tobas-drone-msgs-adapter tobas-drone-server tobas-drone-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas vehicle models, interfaces, and analysis tools.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
