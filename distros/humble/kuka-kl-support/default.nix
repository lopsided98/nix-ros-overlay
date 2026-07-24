
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-kl-support";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_kl_support/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "61215e9742b54a1fa565297448bd0882bdefa26a5d50f6ea7ee7124a2267105d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot model for the KUKA KL family";
    license = with lib.licenses; [ asl20 ];
  };
}
