
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-dsp, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-disturbance-observer";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_disturbance_observer/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f5baed0f96b2b45999ac0060da6f5cc63314888b56787e2db03d1c32c03a5ecc";
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
