
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sensor-msgs, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-joint-states-bridge";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_joint_states_bridge/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "db4a1ac2c31e9fa6c821521358dddb48d55104b694653da60d0676a9bb0f7259";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ sensor-msgs tobas-constants tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that bridges Tobas joint states to standard joint-state interfaces.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
