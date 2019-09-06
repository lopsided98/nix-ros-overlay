
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, control-msgs, realtime-tools, catkin, rosgraph-msgs, rostest, nav-msgs, urdf, controller-interface, dynamic-reconfigure, tf, xacro }:
buildRosPackage {
  pname = "ros-melodic-diff-drive-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/diff_drive_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "bc06277c71ef12ba835e78b38e48a3f39886aaf0a03d779c99689f1ebea02ff0";
  };

  buildType = "catkin";
  buildInputs = [ control-msgs realtime-tools nav-msgs urdf controller-interface dynamic-reconfigure tf ];
  checkInputs = [ controller-manager std-srvs rosgraph-msgs rostest xacro ];
  propagatedBuildInputs = [ control-msgs realtime-tools nav-msgs urdf controller-interface dynamic-reconfigure tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
