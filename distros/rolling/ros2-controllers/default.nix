
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, bicycle-steering-controller, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, position-controllers, steering-controllers-library, tricycle-controller, tricycle-steering-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-rolling-ros2-controllers";
  version = "3.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/ros2_controllers/3.10.1-1.tar.gz";
    name = "3.10.1-1.tar.gz";
    sha256 = "53d107ce4618a86408dc1d7b1b7fa729f44489d27a02b076e1bb7f95ac914f58";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller bicycle-steering-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller position-controllers steering-controllers-library tricycle-controller tricycle-steering-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 controllers related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
