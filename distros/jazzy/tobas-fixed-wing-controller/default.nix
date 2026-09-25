
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-control, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fixed-wing-controller";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fixed_wing_controller/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "831de6b0260f4c48d513f18e5b1da3afe70ee2024b3e01b0b3b77ec383846bf0";
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
