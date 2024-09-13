
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, admittance-controller, ament-cmake, bicycle-steering-controller, diff-drive-controller, effort-controllers, force-torque-sensor-broadcaster, forward-command-controller, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, pid-controller, position-controllers, range-sensor-broadcaster, steering-controllers-library, tricycle-controller, tricycle-steering-controller, velocity-controllers }:
buildRosPackage {
  pname = "ros-jazzy-ros2-controllers";
  version = "4.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/ros2_controllers/4.14.0-1.tar.gz";
    name = "4.14.0-1.tar.gz";
    sha256 = "b16af3fa694a2e0ec3c3b748b301851014a30f5ba21c08e7e1ffd7e68bfb86b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ackermann-steering-controller admittance-controller bicycle-steering-controller diff-drive-controller effort-controllers force-torque-sensor-broadcaster forward-command-controller imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller pid-controller position-controllers range-sensor-broadcaster steering-controllers-library tricycle-controller tricycle-steering-controller velocity-controllers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ROS2 controllers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
