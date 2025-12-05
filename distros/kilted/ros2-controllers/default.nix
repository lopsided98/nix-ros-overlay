
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, bicycle-steering-controller, chained-filter-controller, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, gpio-controllers, gps-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, mecanum-drive-controller, motion-primitives-controllers, omni-wheel-drive-controller, parallel-gripper-controller, pid-controller, pose-broadcaster, position-controllers, range-sensor-broadcaster, steering-controllers-library, tricycle-controller, tricycle-steering-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-kilted-ros2-controllers";
  version = "5.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/ros2_controllers/5.10.0-1.tar.gz";
    name = "5.10.0-1.tar.gz";
    sha256 = "2d8bd0f93b27a584c354f77901bfe61f1d04b095c25aa8fb52e454390df58fb8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller bicycle-steering-controller chained-filter-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller gpio-controllers gps-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller mecanum-drive-controller motion-primitives-controllers omni-wheel-drive-controller parallel-gripper-controller pid-controller pose-broadcaster position-controllers range-sensor-broadcaster steering-controllers-library tricycle-controller tricycle-steering-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ros2_controllers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
