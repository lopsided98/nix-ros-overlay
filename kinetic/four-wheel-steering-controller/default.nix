
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, urdf-geometry-parser, realtime-tools, catkin, rostest, rosgraph-msgs, nav-msgs, controller-interface, tf, four-wheel-steering-msgs }:
buildRosPackage {
  pname = "ros-kinetic-four-wheel-steering-controller";
  version = "0.13.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/four_wheel_steering_controller/0.13.5-0.tar.gz;
    sha256 = "79f36288c0a3bebd6987b95033f450c70564980ce68ba8e3bf5bd27b85c14df4";
  };

  buildInputs = [ nav-msgs controller-interface urdf-geometry-parser realtime-tools tf four-wheel-steering-msgs ];
  checkInputs = [ controller-manager rostest std-srvs rosgraph-msgs ];
  propagatedBuildInputs = [ nav-msgs controller-interface urdf-geometry-parser realtime-tools tf four-wheel-steering-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    #license = lib.licenses.BSD;
  };
}
