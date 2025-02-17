
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, crane-plus-description, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-setup-assistant, moveit-simple-controller-manager, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-crane-plus-moveit-config";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/jazzy/crane_plus_moveit_config/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "d9531bf60067f7495f36e7892fee04faf7a9c0af46c9cb5c02874232ad204eca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager crane-plus-description joint-state-publisher joint-state-publisher-gui moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-setup-assistant moveit-simple-controller-manager robot-state-publisher rviz-common rviz-default-plugins rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CRANE+ V2 move_group config package";
    license = with lib.licenses; [ asl20 ];
  };
}
