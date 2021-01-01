
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, controller-manager, dynamic-reconfigure, nav-msgs, pluginlib, realtime-tools, rosgraph-msgs, rostest, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-diff-drive-controller";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/diff_drive_controller/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "c2f3c44e0f1df1407cc52478542ef8f0822b05dd7c3909c0a88311a4d9d21e3d";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager rosgraph-msgs rostest std-srvs xacro ];
  propagatedBuildInputs = [ control-msgs controller-interface dynamic-reconfigure nav-msgs pluginlib realtime-tools tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
