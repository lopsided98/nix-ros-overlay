
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, bicycle-steering-controller, chained-filter-controller, diff-drive-controller, force-torque-sensor-broadcaster, forward-command-controller, gpio-controllers, gps-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, magnetometer-broadcaster, mecanum-drive-controller, motion-primitives-controllers, omni-wheel-drive-controller, parallel-gripper-controller, pid-controller, pose-broadcaster, range-sensor-broadcaster, state-interfaces-broadcaster, steering-controllers-library, tricycle-controller, tricycle-steering-controller }:
buildRosPackage {
  pname = "ros-lyrical-ros2-controllers";
  version = "6.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/ros2_controllers/6.8.0-1.tar.gz";
    name = "6.8.0-1.tar.gz";
    sha256 = "bc10e50ad99e5e49d1fc33a0e9f44532a8b55aaccb61031ffa511bd3b8a180eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller bicycle-steering-controller chained-filter-controller diff-drive-controller force-torque-sensor-broadcaster forward-command-controller gpio-controllers gps-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller magnetometer-broadcaster mecanum-drive-controller motion-primitives-controllers omni-wheel-drive-controller parallel-gripper-controller pid-controller pose-broadcaster range-sensor-broadcaster state-interfaces-broadcaster steering-controllers-library tricycle-controller tricycle-steering-controller ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ros2_controllers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
