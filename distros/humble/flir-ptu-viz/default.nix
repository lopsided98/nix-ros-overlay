
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, flir-ptu-description, flir-ptu-driver, interactive-markers, joint-state-publisher, joint-state-publisher-gui, rclpy, robot-state-publisher, rviz2, sensor-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-flir-ptu-viz";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/humble/flir_ptu_viz/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "91242ee38f4d667f0cc896cb35c702783ea0ae87a694dd974a0e70daa66e7594";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ flir-ptu-description flir-ptu-driver interactive-markers joint-state-publisher joint-state-publisher-gui rclpy robot-state-publisher rviz2 sensor-msgs visualization-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch files and RViz configs to assist with visualizing the FLIR PTUs.";
    license = with lib.licenses; [ bsd3 ];
  };
}
