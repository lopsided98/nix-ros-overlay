
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-mission-execution-mc, tobas-mission-items, tobas-mission-msgs, tobas-mission-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "ca5dd1633d2c24429cbb92f65824467fd749aa46dbc61a3edbb05be2539a4891";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-mission-execution-mc tobas-mission-items tobas-mission-msgs tobas-mission-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas mission definitions, planning interfaces, and execution.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
