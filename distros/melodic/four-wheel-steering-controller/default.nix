
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, four-wheel-steering-msgs, nav-msgs, pluginlib, realtime-tools, rosgraph-msgs, rostest, std-srvs, tf, urdf-geometry-parser }:
buildRosPackage {
  pname = "ros-melodic-four-wheel-steering-controller";
  version = "0.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/four_wheel_steering_controller/0.16.1-1.tar.gz";
    name = "0.16.1-1.tar.gz";
    sha256 = "5f0e1608b80dfcc937eb2280a5c460a72656ce5d3e98dee382d6d2c498c56fd9";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager rosgraph-msgs rostest std-srvs ];
  propagatedBuildInputs = [ controller-interface four-wheel-steering-msgs nav-msgs pluginlib realtime-tools tf urdf-geometry-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
