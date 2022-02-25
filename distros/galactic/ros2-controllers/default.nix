
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, position-controllers, velocity-controllers }:
buildRosPackage {
  pname = "ros-galactic-ros2-controllers";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/ros2_controllers/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ead11a67983f72e3a9c2ec51115d02dd324814e1df675fc9979e28f23d63fadc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller position-controllers velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 controllers related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
