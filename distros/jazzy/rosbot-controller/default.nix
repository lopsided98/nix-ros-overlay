
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_husarion_mecanum_drive_controller, ament-cmake, ament-cmake-pytest, controller-manager, diff-drive-controller, imu-sensor-broadcaster, joint-state-broadcaster, launch, launch-ros, nav2-common, position-controllers, python3Packages, ros2controlcli, rosbot-description, rosbot-hardware-interfaces, rosbot-moveit, rosbot-utils, udev, xacro }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-controller";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_controller/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "49273d9038b5d74b52355255cd8f1f089af2459467db230eec7462ff2fef8b46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest rosbot-description xacro ];
  propagatedBuildInputs = [ _unresolved_husarion_mecanum_drive_controller controller-manager diff-drive-controller imu-sensor-broadcaster joint-state-broadcaster launch launch-ros nav2-common position-controllers ros2controlcli rosbot-description rosbot-hardware-interfaces rosbot-moveit rosbot-utils udev xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hardware configuration for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
