
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-geographic, tobas-mission-items, tobas-mission-msgs, tobas-msgs-adapter, tobas-node, tobas-trajectory-generation }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-execution-mc";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_execution_mc/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "06ac96bd451a02bec12c1c2754243aa56ee2ffc0f778bdf856135c17aa4e1129";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-command-msgs-adapter tobas-geographic tobas-mission-items tobas-mission-msgs tobas-msgs-adapter tobas-node tobas-trajectory-generation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Multicopter mission executor and stop-trajectory generator.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
