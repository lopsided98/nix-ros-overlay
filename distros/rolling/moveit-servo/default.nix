
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, control-msgs, control-toolbox, controller-manager, geometry-msgs, gripper-controllers, joint-state-broadcaster, joint-trajectory-controller, joy, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, pluginlib, robot-state-publisher, ros-testing, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-servo";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/rolling/moveit_servo/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "8de77cc23fcbbf649f6cbe62c9844398468fcb964cb228c6f95c3d1d442cdbd9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common controller-manager moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-manager geometry-msgs gripper-controllers joint-state-broadcaster joint-trajectory-controller joy launch-param-builder moveit-common moveit-configs-utils moveit-core moveit-msgs moveit-ros-planning-interface pluginlib robot-state-publisher sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides real-time manipulator Cartesian and joint servoing.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
