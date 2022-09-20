
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, control-msgs, control-toolbox, geometry-msgs, gripper-controllers, joint-state-broadcaster, joint-trajectory-controller, joy, moveit-common, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, robot-state-publisher, ros-testing, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-moveit-servo";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_servo/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "eaa39c16fb6d17aae338557b53d075799d529311ae5dbd32ec17ec7b28ac3c56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ control-msgs control-toolbox geometry-msgs gripper-controllers joint-state-broadcaster joint-trajectory-controller joy moveit-msgs moveit-ros-planning-interface robot-state-publisher sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides real-time manipulator Cartesian and joint servoing.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
