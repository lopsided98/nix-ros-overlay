
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dynamixel-handler, tobas-dynamixel-msgs, tobas-dynamixel-ros-interface }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "bccb6778d45b7b306fe73641f33613d9be84b80445e252bb8e70951edcdc514a";
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
