
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-state-controller, joint-trajectory-controller, position-controllers, velocity-controllers }:
buildRosPackage {
  pname = "ros-foxy-ros2-controllers";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/ros2_controllers/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "1d4aabf7d66422d8a5ffc84306123178f342af63c95b665eccfed9a453f3844a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-state-controller joint-trajectory-controller position-controllers velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 controllers related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
