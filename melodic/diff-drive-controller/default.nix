
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-interface, controller-manager, urdf, dynamic-reconfigure, rosgraph-msgs, std-srvs, tf, catkin, realtime-tools, nav-msgs, rostest, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-diff-drive-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/diff_drive_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "bc06277c71ef12ba835e78b38e48a3f39886aaf0a03d779c99689f1ebea02ff0";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface dynamic-reconfigure urdf tf realtime-tools nav-msgs control-msgs ];
  checkInputs = [ xacro controller-manager std-srvs rosgraph-msgs rostest ];
  propagatedBuildInputs = [ controller-interface dynamic-reconfigure urdf tf realtime-tools nav-msgs control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
