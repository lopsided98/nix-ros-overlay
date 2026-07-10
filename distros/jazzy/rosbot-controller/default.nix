
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, controller-manager, diff-drive-controller, husarion-mecanum-drive-controller, imu-sensor-broadcaster, joint-state-broadcaster, launch, launch-ros, nav2-common, position-controllers, python3Packages, ros2controlcli, rosbot-description, rosbot-hardware-interfaces, rosbot-moveit, rosbot-utils, udev, xacro }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-controller";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_controller/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "3c1463c8bc823a4ec6b8a32cf5bb5f300255e03e7dedbf29ed056dd894f8e118";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest python3Packages.pyyaml rosbot-description xacro ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller husarion-mecanum-drive-controller imu-sensor-broadcaster joint-state-broadcaster launch launch-ros nav2-common position-controllers ros2controlcli rosbot-description rosbot-hardware-interfaces rosbot-moveit rosbot-utils udev xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hardware configuration for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
