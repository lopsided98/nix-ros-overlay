
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core, tobas-drone-msgs, tobas-drone-msgs-adapter, tobas-drone-server, tobas-drone-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "ad4d1b08dff1fa6af0c8cee20f8cf2d4d1486e2257d3c5fc57a3cd6f9637a472";
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
