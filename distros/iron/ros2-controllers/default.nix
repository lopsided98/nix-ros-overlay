
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, bicycle-steering-controller, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, pid-controller, position-controllers, range-sensor-broadcaster, steering-controllers-library, tricycle-controller, tricycle-steering-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-iron-ros2-controllers";
  version = "3.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/ros2_controllers/3.28.0-1.tar.gz";
    name = "3.28.0-1.tar.gz";
    sha256 = "730262823a79d5db07dd6892a12ae9a3e87d8e8d133ebcb10e321b819c84d6ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller bicycle-steering-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller pid-controller position-controllers range-sensor-broadcaster steering-controllers-library tricycle-controller tricycle-steering-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ros2_controllers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
