
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core, tobas-drone-msgs, tobas-drone-msgs-adapter, tobas-drone-server, tobas-drone-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f6947047c10dd437233f3331988e76165cf0565b0d9f880fa039c515b4c3b2a9";
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
