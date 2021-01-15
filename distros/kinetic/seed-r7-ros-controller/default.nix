
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-manager, geometry-msgs, hardware-interface, joint-limits-interface, joint-state-controller, joint-trajectory-controller, message-generation, move-base-msgs, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, seed-r7-description, seed-smartactuator-sdk, sensor-msgs, std-msgs, tf, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-ros-controller";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_ros_controller/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "197c50295c3b820ccf2cac1108018149a0a89148eb34dab9f1ec172439fbc77e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-manager geometry-msgs hardware-interface joint-limits-interface joint-state-controller joint-trajectory-controller message-generation move-base-msgs nav-msgs pluginlib realtime-tools roscpp rostest seed-r7-description seed-smartactuator-sdk sensor-msgs std-msgs tf trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
