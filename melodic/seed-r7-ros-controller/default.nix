
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, controller-manager, urdf, control-toolbox, pluginlib, tf, nav-msgs, rostest, joint-state-controller, sensor-msgs, seed-smartactuator-sdk, transmission-interface, seed-r7-description, joint-trajectory-controller, move-base-msgs, joint-limits-interface, std-msgs, catkin, realtime-tools, roscpp, angles, message-generation, control-msgs, trajectory-msgs, hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-ros-controller";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_ros_controller/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "0e3674741373be00a5b4182f1d0f89d4efb84a61dadc306e769337ab72cc41b5";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf control-toolbox controller-manager pluginlib tf nav-msgs rostest joint-state-controller sensor-msgs seed-smartactuator-sdk transmission-interface seed-r7-description joint-trajectory-controller move-base-msgs joint-limits-interface std-msgs realtime-tools roscpp angles message-generation control-msgs trajectory-msgs hardware-interface ];
  propagatedBuildInputs = [ geometry-msgs urdf control-toolbox controller-manager pluginlib tf nav-msgs rostest joint-state-controller sensor-msgs seed-smartactuator-sdk transmission-interface seed-r7-description joint-trajectory-controller move-base-msgs joint-limits-interface std-msgs realtime-tools roscpp angles message-generation control-msgs trajectory-msgs hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
