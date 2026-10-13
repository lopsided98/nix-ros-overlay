
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, easynav-playground-summit-description, gz-ros2-control, gz-sim-vendor, joint-state-broadcaster, launch, launch-ros, launch-yaml, navmap-tools, robot-state-publisher, ros-gz-bridge, ros-gz-sim, twist-stamper, xacro }:
buildRosPackage {
  pname = "ros-lyrical-easynav-playground-summit-worlds";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/lyrical/easynav_playground_summit_worlds/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a71b676c97293b83fdaca270700e7e8ccd2248afb2823abe0b9dfb63817e4412";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller easynav-playground-summit-description gz-ros2-control gz-sim-vendor joint-state-broadcaster launch launch-ros launch-yaml navmap-tools robot-state-publisher ros-gz-bridge ros-gz-sim twist-stamper xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo (Harmonic or newer) simulation of a Summit XL for the EasyNav playgrounds: the URJC excavation and a small warehouse, their maps, and the launchers that spawn the Summit XL with its controllers and the ROS-Gazebo bridge.";
    license = with lib.licenses; [ asl20 gpl3Only mit0 ];
  };
}
