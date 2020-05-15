
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, controller-manager, dynamic-reconfigure, nav-msgs, pluginlib, realtime-tools, rosgraph-msgs, rostest, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-diff-drive-controller";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/diff_drive_controller/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "eda9dc5aa8421b9800b46c927b7688faa7f7e71e409e5924a0b4d36521793aa5";
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
