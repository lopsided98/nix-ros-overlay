
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, four-wheel-steering-msgs, nav-msgs, realtime-tools, rosgraph-msgs, rostest, std-srvs, tf, urdf-geometry-parser }:
buildRosPackage {
  pname = "ros-kinetic-four-wheel-steering-controller";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/four_wheel_steering_controller/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "2fe02add9f752db43a4074d1da59fdec72bf82686f7a32c152ed5b965d6cbb86";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager rosgraph-msgs rostest std-srvs ];
  propagatedBuildInputs = [ controller-interface four-wheel-steering-msgs nav-msgs realtime-tools tf urdf-geometry-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
