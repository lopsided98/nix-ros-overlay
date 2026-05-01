
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ffw-description";
  version = "1.1.14-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/lyrical/ffw_description/1.1.14-3.tar.gz";
    name = "1.1.14-3.tar.gz";
    sha256 = "ddf64889ab6d32d4a120ae1f666ff051a90e27555a00bad3705e01740967a56d";
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
