
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-manager, moveit-common, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, pluginlib, position-controllers, rclcpp, rclcpp-action, rclcpp-components, robot-state-publisher, ros-testing, rviz2, std-msgs, std-srvs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-moveit-hybrid-planning";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_hybrid_planning/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "aa44a7ffc9494436e863bed87770f198b3bbb99a4bd1a2476a6b9fab02923211";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-planners-ompl ros-testing ];
  propagatedBuildInputs = [ ament-index-cpp controller-manager moveit-common moveit-core moveit-msgs moveit-resources-panda-moveit-config moveit-ros-planning moveit-ros-planning-interface pluginlib position-controllers rclcpp rclcpp-action rclcpp-components robot-state-publisher rviz2 std-msgs std-srvs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Hybrid planning components of MoveIt 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
