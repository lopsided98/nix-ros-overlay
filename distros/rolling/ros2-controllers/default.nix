
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, admittance-controller, ament-cmake, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, position-controllers, tricycle-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-rolling-ros2-controllers";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/ros2_controllers/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "dea02279f1d5f0683586f70c3b3e8da19dfe0151ce2c6f082c2eaf5fe3317989";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ admittance-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller position-controllers tricycle-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 controllers related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
