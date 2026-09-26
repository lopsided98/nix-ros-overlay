
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-dsp, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-disturbance-observer";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_disturbance_observer/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "b1641a7431cddcdd9bfd6e51c85581f98bdce686607fed22586925b9a88f1ab4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-msgs-adapter tobas-dsp tobas-msgs-adapter tobas-node tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that estimates external forces and moments acting on the vehicle.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
