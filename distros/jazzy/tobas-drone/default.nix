
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core, tobas-drone-msgs, tobas-drone-msgs-adapter, tobas-drone-server, tobas-drone-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "e35c26825bff2995e6b877037b7255660f732b3210346346d2b2f41714cfb0ca";
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
