
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, four-wheel-steering-msgs, nav-msgs, realtime-tools, rosgraph-msgs, rostest, std-srvs, tf, urdf-geometry-parser }:
buildRosPackage {
  pname = "ros-kinetic-four-wheel-steering-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/four_wheel_steering_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "79f36288c0a3bebd6987b95033f450c70564980ce68ba8e3bf5bd27b85c14df4";
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
