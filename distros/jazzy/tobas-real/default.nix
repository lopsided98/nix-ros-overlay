
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dynamixel, tobas-real-common, tobas-real-msgs, tobas-real-ros, tobas-sbus-driver }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "893829d187edb8cc2fcb4c12723b3b556133222497b40e0d3865871acd62c411";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dynamixel tobas-real-common tobas-real-msgs tobas-real-ros tobas-sbus-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas real-hardware runtime interfaces.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
