
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, admittance-controller, ament-cmake, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, position-controllers, tricycle-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-humble-ros2-controllers";
  version = "2.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/ros2_controllers/2.16.1-1.tar.gz";
    name = "2.16.1-1.tar.gz";
    sha256 = "dd6f6324f3f68ae3cb0e470e34c045ed56254ea640e4513cb62e813fa7b5264a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ admittance-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller position-controllers tricycle-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 controllers related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
