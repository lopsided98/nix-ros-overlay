
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-control, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fixed-wing-controller";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fixed_wing_controller/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "fcf23017a33ce8be7371054130d31aa1041e876cb635d252d15f4fec68a7e7c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-control tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-drone-tools tobas-node tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 flight-controller node for fixed-wing aircraft.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
