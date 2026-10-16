
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-mission-execution-mc, tobas-mission-items, tobas-mission-msgs, tobas-mission-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "f625b4cb453fd4b728cdc3a87f3f38d475f51e95b33eb57ec992ea6e544e58b2";
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
