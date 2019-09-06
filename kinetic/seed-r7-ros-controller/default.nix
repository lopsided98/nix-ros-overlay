
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-trajectory-controller, tf, geometry-msgs, hardware-interface, joint-state-controller, realtime-tools, seed-r7-robot-interface, message-generation, angles, seed-smartactuator-sdk, control-msgs, trajectory-msgs, joint-limits-interface, catkin, move-base-msgs, nav-msgs, urdf, std-msgs, roscpp, controller-manager, pluginlib, control-toolbox, sensor-msgs, rostest, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-ros-controller";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_ros_controller/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "415cc2a80bb25cdd774d40af16d62abfdeeeba9415448736125f538df12d2d3a";
  };

  buildType = "catkin";
  buildInputs = [ joint-trajectory-controller tf geometry-msgs hardware-interface joint-state-controller realtime-tools seed-r7-robot-interface message-generation angles seed-smartactuator-sdk control-msgs trajectory-msgs joint-limits-interface move-base-msgs nav-msgs urdf std-msgs roscpp controller-manager pluginlib control-toolbox sensor-msgs rostest transmission-interface ];
  propagatedBuildInputs = [ joint-trajectory-controller tf geometry-msgs hardware-interface joint-state-controller realtime-tools seed-r7-robot-interface message-generation angles seed-smartactuator-sdk control-msgs trajectory-msgs joint-limits-interface move-base-msgs nav-msgs urdf std-msgs roscpp controller-manager pluginlib control-toolbox sensor-msgs rostest transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
