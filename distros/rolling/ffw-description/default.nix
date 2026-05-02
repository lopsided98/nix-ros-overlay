
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-ffw-description";
  version = "1.1.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/rolling/ffw_description/1.1.14-2.tar.gz";
    name = "1.1.14-2.tar.gz";
    sha256 = "927a5f649b9ae50e399a3aba106268d87fa486fe88489c3443d229225e72c2e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D models of the FFW for simulation and visualization";
    license = with lib.licenses; [ asl20 ];
  };
}
