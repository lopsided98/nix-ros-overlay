
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, position-controllers, tricycle-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-humble-ros2-controllers";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/ros2_controllers/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "362c2c22b3623d4bf0c8c4c36250e019547d9ebd20fd3540f7db7e75d37622a8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller position-controllers tricycle-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 controllers related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
