
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, bicycle-steering-controller, chained-filter-controller, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, gpio-controllers, gps-sensor-broadcaster, gripper-controllers, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, mecanum-drive-controller, omni-wheel-drive-controller, parallel-gripper-controller, pid-controller, pose-broadcaster, position-controllers, range-sensor-broadcaster, steering-controllers-library, tricycle-controller, tricycle-steering-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-jazzy-ros2-controllers";
  version = "4.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/ros2_controllers/4.35.0-1.tar.gz";
    name = "4.35.0-1.tar.gz";
    sha256 = "b1296ba765e151b8bb937f120d175d8634aede01a18d15de62f06520d5787a42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller bicycle-steering-controller chained-filter-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller gpio-controllers gps-sensor-broadcaster gripper-controllers imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller mecanum-drive-controller omni-wheel-drive-controller parallel-gripper-controller pid-controller pose-broadcaster position-controllers range-sensor-broadcaster steering-controllers-library tricycle-controller tricycle-steering-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ros2_controllers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
