
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-manager, geometry-msgs, hardware-interface, joint-limits-interface, joint-state-controller, joint-trajectory-controller, message-generation, move-base-msgs, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, seed-r7-description, seed-smartactuator-sdk, sensor-msgs, std-msgs, tf, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-ros-controller";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_ros_controller/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "0e3674741373be00a5b4182f1d0f89d4efb84a61dadc306e769337ab72cc41b5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-manager geometry-msgs hardware-interface joint-limits-interface joint-state-controller joint-trajectory-controller message-generation move-base-msgs nav-msgs pluginlib realtime-tools roscpp rostest seed-r7-description seed-smartactuator-sdk sensor-msgs std-msgs tf trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
