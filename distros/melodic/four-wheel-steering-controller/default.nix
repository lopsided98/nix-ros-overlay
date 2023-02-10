
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, four-wheel-steering-msgs, nav-msgs, pluginlib, realtime-tools, rosgraph-msgs, rostest, std-srvs, tf, urdf-geometry-parser }:
buildRosPackage {
  pname = "ros-melodic-four-wheel-steering-controller";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/four_wheel_steering_controller/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "f6e234a342e628d441c21375f5077143a18f16626435cf3e961600f06afc55c3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager rosgraph-msgs rostest std-srvs ];
  propagatedBuildInputs = [ controller-interface four-wheel-steering-msgs nav-msgs pluginlib realtime-tools tf urdf-geometry-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
