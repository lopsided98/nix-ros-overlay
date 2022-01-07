
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, control-msgs, control-toolbox, controller-manager, geometry-msgs, gripper-controllers, joint-state-broadcaster, joint-trajectory-controller, joy, moveit-common, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, pluginlib, robot-state-publisher, ros-testing, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-galactic-moveit-servo";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_servo/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "03cf152256afa874c1400a043dcf51b21d210312fcf35f8626be273bc1b15e40";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common controller-manager moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ control-msgs control-toolbox geometry-msgs gripper-controllers joint-state-broadcaster joint-trajectory-controller joy moveit-core moveit-msgs moveit-ros-planning-interface pluginlib robot-state-publisher sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides real-time manipulator Cartesian and joint servoing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
