
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cl-keyboard, cl-moveit2z, cl-ros2-timer, controller-manager, joint-state-broadcaster, joint-trajectory-controller, moveit, moveit-planners-chomp, moveit-planners-ompl, moveit-plugins, moveit-resources-panda-moveit-config, moveit-ros-robot-interaction, moveit-simple-controller-manager, moveit-visual-tools, pilz-industrial-motion-planner, plasma5Packages, rclcpp, robot-state-publisher, smacc2, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-sm-panda-cl-moveit2z-cb-inventory-isaacsim";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_panda_cl_moveit2z_cb_inventory_isaacsim/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "91a74110977666b1b1cb2c27847850b307bc3f7ac34dff3ed6061e3ea7bbc0cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cl-keyboard cl-moveit2z cl-ros2-timer controller-manager joint-state-broadcaster joint-trajectory-controller moveit moveit-planners-chomp moveit-planners-ompl moveit-plugins moveit-resources-panda-moveit-config moveit-ros-robot-interaction moveit-simple-controller-manager moveit-visual-tools pilz-industrial-motion-planner plasma5Packages.konsole rclcpp robot-state-publisher smacc2 yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_panda_cl_moveit2z_cb_inventory package adapted for Isaac Sim";
    license = with lib.licenses; [ asl20 ];
  };
}
