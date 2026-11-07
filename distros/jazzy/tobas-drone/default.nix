
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core, tobas-drone-msgs, tobas-drone-msgs-adapter, tobas-drone-server, tobas-drone-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "ac1d3c18b49b2b4d1a92bc21999f3b5999c4450a2beec322d9a35b6977da243e";
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
