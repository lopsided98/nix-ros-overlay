
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-mission-execution-mc, tobas-mission-items, tobas-mission-msgs, tobas-mission-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "bc1258a27c0cde9e314221dc92932b2885bb08459ef93d05c53b904099a8d29f";
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
