
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, battery-state-broadcaster, bicycle-steering-controller, chained-filter-controller, diff-drive-controller, force-torque-sensor-broadcaster, forward-command-controller, gpio-controllers, gps-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, magnetometer-broadcaster, mecanum-drive-controller, motion-primitives-controllers, omni-wheel-drive-controller, parallel-gripper-controller, pid-controller, pose-broadcaster, range-sensor-broadcaster, state-interfaces-broadcaster, steering-controllers-library, tricycle-controller, tricycle-steering-controller }:
buildRosPackage {
  pname = "ros-rolling-ros2-controllers";
  version = "6.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/ros2_controllers/6.10.0-1.tar.gz";
    name = "6.10.0-1.tar.gz";
    sha256 = "fff4a83e5930b33ef09685e03ddd790840793f4ce563e102f03bee0bfd0c43a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller battery-state-broadcaster bicycle-steering-controller chained-filter-controller diff-drive-controller force-torque-sensor-broadcaster forward-command-controller gpio-controllers gps-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller magnetometer-broadcaster mecanum-drive-controller motion-primitives-controllers omni-wheel-drive-controller parallel-gripper-controller pid-controller pose-broadcaster range-sensor-broadcaster state-interfaces-broadcaster steering-controllers-library tricycle-controller tricycle-steering-controller ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ros2_controllers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
