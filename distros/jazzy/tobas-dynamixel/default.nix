
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dynamixel-handler, tobas-dynamixel-msgs, tobas-dynamixel-ros-interface }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "038f3b86dfaf4ac29060b8914051479ac010d3f97cf16be7c45fc08281005ec8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dynamixel-handler tobas-dynamixel-msgs tobas-dynamixel-ros-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Dynamixel motor messages, interfaces, and handler nodes.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
