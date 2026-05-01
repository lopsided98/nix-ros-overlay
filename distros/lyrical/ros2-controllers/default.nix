
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, bicycle-steering-controller, chained-filter-controller, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, gpio-controllers, gps-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, mecanum-drive-controller, motion-primitives-controllers, omni-wheel-drive-controller, parallel-gripper-controller, pid-controller, pose-broadcaster, position-controllers, range-sensor-broadcaster, state-interfaces-broadcaster, steering-controllers-library, tricycle-controller, tricycle-steering-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-lyrical-ros2-controllers";
  version = "6.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/ros2_controllers/6.6.0-3.tar.gz";
    name = "6.6.0-3.tar.gz";
    sha256 = "8a1f00e3a7065ffc66e8ac7b10da60d48b9908e52dbb1d822c94b86330a2fb64";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller bicycle-steering-controller chained-filter-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller gpio-controllers gps-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller mecanum-drive-controller motion-primitives-controllers omni-wheel-drive-controller parallel-gripper-controller pid-controller pose-broadcaster position-controllers range-sensor-broadcaster state-interfaces-broadcaster steering-controllers-library tricycle-controller tricycle-steering-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ros2_controllers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
