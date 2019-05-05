
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, realtime-tools, catkin, rosgraph-msgs, rostest, nav-msgs, urdf, controller-interface, dynamic-reconfigure, tf, xacro }:
buildRosPackage {
  pname = "ros-lunar-diff-drive-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/diff_drive_controller/0.13.4-0.tar.gz;
    sha256 = "3b08d37d4e2ef4ce96b996b8a1e0b748b45e1b19e842893f5a694ec694ab233a";
  };

  buildInputs = [ realtime-tools nav-msgs urdf controller-interface dynamic-reconfigure tf ];
  checkInputs = [ controller-manager std-srvs rosgraph-msgs rostest xacro ];
  propagatedBuildInputs = [ realtime-tools nav-msgs urdf controller-interface dynamic-reconfigure tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
