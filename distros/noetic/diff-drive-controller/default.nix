
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, control-msgs, controller-interface, controller-manager, dynamic-reconfigure, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, rosgraph-msgs, rostest, rostopic, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-diff-drive-controller";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/diff_drive_controller/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "f3e4dfe58c86897ada35e7c8039db619c172a4ecd5a22eb59cea6255f1aee3d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager rosgraph-msgs rostest rostopic std-srvs xacro ];
  propagatedBuildInputs = [ boost control-msgs controller-interface dynamic-reconfigure geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Controller for a differential drive mobile base.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
