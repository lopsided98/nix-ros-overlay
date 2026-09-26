
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-y-axis-tilt-multi-controller";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_y_axis_tilt_multi_controller/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "714b24fec2f500906269ada0f742417ef9c679cb4f81370246908a3161815a95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-drone-tools tobas-node tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Flight controller, dynamics, and mixer for Y-axis tilt multirotor aircraft.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
