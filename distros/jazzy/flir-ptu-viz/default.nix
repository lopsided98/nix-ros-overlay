
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, flir-ptu-description, flir-ptu-driver, interactive-markers, joint-state-publisher, joint-state-publisher-gui, rclpy, robot-state-publisher, rviz2, sensor-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-flir-ptu-viz";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/jazzy/flir_ptu_viz/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "97d65309fcd6f30ab8706c072f3ff263c471fb88374ee73225fa6c2d1c8ed78e";
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
