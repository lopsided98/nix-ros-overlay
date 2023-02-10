
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, controller-manager, dynamic-reconfigure, nav-msgs, pluginlib, realtime-tools, rosgraph-msgs, rostest, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-diff-drive-controller";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/diff_drive_controller/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "d6d3b34385ffda6d79c9cfe35fd4472dafcc9434bb6293244f39f64bb5fd57ff";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager rosgraph-msgs rostest std-srvs xacro ];
  propagatedBuildInputs = [ control-msgs controller-interface dynamic-reconfigure nav-msgs pluginlib realtime-tools tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
