
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, forward-command-controller, joint-state-broadcaster, joint-state-publisher-gui, joint-trajectory-controller, robot-state-publisher, ros2-controllers-test-nodes, ros2controlcli, ros2launch, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-qb-device-bringup";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros2-release/get/release/humble/qb_device_bringup/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "aab7e2c9060f03ace5b6f814471d3458bb3a39b6da6ac948260e3401291ac5e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager forward-command-controller joint-state-broadcaster joint-state-publisher-gui joint-trajectory-controller robot-state-publisher ros2-controllers-test-nodes ros2controlcli ros2launch rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains a device-independent bringup utilities for qbrobotics® devices.";
    license = with lib.licenses; [ bsd3 ];
  };
}
