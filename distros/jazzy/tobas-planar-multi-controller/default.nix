
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools, tobas-trajectory-generation }:
buildRosPackage {
  pname = "ros-jazzy-tobas-planar-multi-controller";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_planar_multi_controller/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "4dc18e808100794a3551644ec442dff75f6ac1fd2aea087bb888e5a1526492b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-drone-tools tobas-node tobas-tools tobas-trajectory-generation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Flight controller, dynamics, and mixer implementations for planar multirotor aircraft.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
