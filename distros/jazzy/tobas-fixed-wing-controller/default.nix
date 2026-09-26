
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-control, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fixed-wing-controller";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fixed_wing_controller/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "1c25b7fb1addcfd8509e7afe5f39cf304e203ae2b40baea0bbafd24f0faef6f1";
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
