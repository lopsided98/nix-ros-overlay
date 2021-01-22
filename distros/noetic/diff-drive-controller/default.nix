
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, control-msgs, controller-interface, controller-manager, dynamic-reconfigure, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, rosgraph-msgs, rostest, rostopic, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-diff-drive-controller";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/diff_drive_controller/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "f35b747b2ed7e25785f23f6238d14cff1f25fd70c8e1df8b89bccc475b9dfa1d";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager rosgraph-msgs rostest rostopic std-srvs xacro ];
  propagatedBuildInputs = [ boost control-msgs controller-interface dynamic-reconfigure geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
