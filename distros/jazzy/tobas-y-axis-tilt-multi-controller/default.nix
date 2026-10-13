
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-y-axis-tilt-multi-controller";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_y_axis_tilt_multi_controller/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "2e3090880e6c9b84b68f8aa0b34d48c67d4eb4f658f9688532f3e4a5d5924b49";
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
