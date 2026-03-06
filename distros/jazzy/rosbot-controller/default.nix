
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, controller-manager, diff-drive-controller, imu-sensor-broadcaster, joint-state-broadcaster, launch, launch-ros, mecanum-drive-controller, nav2-common, position-controllers, python3Packages, ros2controlcli, rosbot-description, rosbot-moveit, rosbot-utils, udev, xacro }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-controller";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_controller/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "69fc6faf010d2b93ca7f014fa55facd68f5bcc0fca7416adac549ea29c4bd6ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest rosbot-description xacro ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller imu-sensor-broadcaster joint-state-broadcaster launch launch-ros mecanum-drive-controller nav2-common position-controllers ros2controlcli rosbot-description rosbot-moveit rosbot-utils udev xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hardware configuration for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
