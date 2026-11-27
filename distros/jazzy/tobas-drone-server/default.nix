
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-server";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_server/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "763a2fcd21f18925c2106be47fd7fe0ef742f493ccb06baf60450bc39194e3cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-msgs-adapter tobas-msgs tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that serves the configured Tobas vehicle model.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
