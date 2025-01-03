
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, controller-manager, forward-command-controller, hardware-interface, joint-state-broadcaster, joint-state-publisher-gui, joint-trajectory-controller, pluginlib, qb-softhand-industry-msgs, qb-softhand-industry-srvs, rclcpp, rclcpp-lifecycle, robot-state-publisher, ros2-controllers-test-nodes, ros2controlcli, ros2launch, rviz2, transmission-interface, xacro }:
buildRosPackage {
  pname = "ros-humble-qb-softhand-industry-ros2-control";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros2-release/get/release/humble/qb_softhand_industry_ros2_control/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "e93d568703062b21700a82ba59b64c93c2fa127ff1d5c5d9b8845e6a987c4a59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ controller-manager forward-command-controller hardware-interface joint-state-broadcaster joint-state-publisher-gui joint-trajectory-controller pluginlib qb-softhand-industry-msgs qb-softhand-industry-srvs rclcpp rclcpp-lifecycle robot-state-publisher ros2-controllers-test-nodes ros2controlcli ros2launch rviz2 transmission-interface xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package of `ros2_control` hardware for qbSoftHand Industry with transmission interface.";
    license = with lib.licenses; [ bsd3 ];
  };
}
