
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, realtime-tools, catkin, rosgraph-msgs, rostest, nav-msgs, urdf, controller-interface, dynamic-reconfigure, tf, xacro }:
buildRosPackage {
  pname = "ros-melodic-diff-drive-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/diff_drive_controller/0.14.3-0.tar.gz;
    sha256 = "93692d0c5cc880e511ca179ba0e482e4afcc79c5dced306af42747984df000bf";
  };

  checkInputs = [ controller-manager rosgraph-msgs rostest std-srvs xacro ];
  propagatedBuildInputs = [ nav-msgs urdf controller-interface dynamic-reconfigure realtime-tools tf ];
  nativeBuildInputs = [ nav-msgs urdf controller-interface dynamic-reconfigure realtime-tools catkin tf ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    #license = lib.licenses.BSD;
  };
}
