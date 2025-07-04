
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, bicycle-steering-controller, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, gpio-controllers, gps-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, mecanum-drive-controller, parallel-gripper-controller, pid-controller, pose-broadcaster, position-controllers, range-sensor-broadcaster, steering-controllers-library, tricycle-controller, tricycle-steering-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-rolling-ros2-controllers";
  version = "5.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/ros2_controllers/5.2.0-1.tar.gz";
    name = "5.2.0-1.tar.gz";
    sha256 = "02343b65f8b2b084ab81928b39875a5fc900718eb8cea8141af3d825c4f3e9b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller bicycle-steering-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller gpio-controllers gps-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller mecanum-drive-controller parallel-gripper-controller pid-controller pose-broadcaster position-controllers range-sensor-broadcaster steering-controllers-library tricycle-controller tricycle-steering-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ros2_controllers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
