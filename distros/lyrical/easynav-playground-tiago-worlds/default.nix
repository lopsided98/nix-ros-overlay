
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, easynav-playground-tiago-description, force-torque-sensor-broadcaster, gz-ros2-control, gz-sim-vendor, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-yaml, robot-state-publisher, ros-gz-bridge, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-lyrical-easynav-playground-tiago-worlds";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/lyrical/easynav_playground_tiago_worlds/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "230ecf37614cf7e53aa89f70f6d086c677e2b5ff565a36057e25532d2a658bfd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller easynav-playground-tiago-description force-torque-sensor-broadcaster gz-ros2-control gz-sim-vendor imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros launch-yaml robot-state-publisher ros-gz-bridge ros-gz-sim xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo (Harmonic or newer) simulation of TIAGo for the EasyNav playgrounds: the AWS small house world, its maps, and the launchers that spawn TIAGo with its controllers and the ROS-Gazebo bridge.";
    license = with lib.licenses; [ asl20 mit0 ];
  };
}
