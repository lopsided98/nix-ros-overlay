
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dynamixel-handler, tobas-dynamixel-msgs, tobas-dynamixel-ros-interface }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "2fba4600602103d78de4e515b8858b67891e42816b09315c0a28aba957fc2a83";
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
