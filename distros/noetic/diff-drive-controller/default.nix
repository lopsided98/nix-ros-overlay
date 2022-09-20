
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, control-msgs, controller-interface, controller-manager, dynamic-reconfigure, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, rosgraph-msgs, rostest, rostopic, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-diff-drive-controller";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/diff_drive_controller/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "03c536a0d01ebddff96e04db85e7107f5163c03f4b26bc3949139d16f34b2c39";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager rosgraph-msgs rostest rostopic std-srvs xacro ];
  propagatedBuildInputs = [ boost control-msgs controller-interface dynamic-reconfigure geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
