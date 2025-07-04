
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ffw-description";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_description/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "458bda5eb400067df8d0d52d8f4de0d101d35338f0fd415886148fdfebc97e92";
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
