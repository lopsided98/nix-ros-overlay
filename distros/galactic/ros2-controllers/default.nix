
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, position-controllers, velocity-controllers }:
buildRosPackage {
  pname = "ros-galactic-ros2-controllers";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/ros2_controllers/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "9a125f493f58df3f45abb1db2fc4bee94895776546188b986a5a1bbaf950e630";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller position-controllers velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 controllers related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
