
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-interface, nav-msgs, controller-manager, dynamic-reconfigure, urdf, std-srvs, tf, catkin, realtime-tools, rosgraph-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-diff-drive-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/diff_drive_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "ad89d6037ec24fd9d0b324832cb333a637182b98e49d3b5bca66baa5a74ddf0b";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface dynamic-reconfigure urdf tf realtime-tools nav-msgs ];
  checkInputs = [ xacro controller-manager std-srvs rosgraph-msgs rostest ];
  propagatedBuildInputs = [ controller-interface dynamic-reconfigure urdf tf realtime-tools nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
