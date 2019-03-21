
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, urdf-geometry-parser, realtime-tools, catkin, rostest, rosgraph-msgs, nav-msgs, controller-interface, tf, four-wheel-steering-msgs }:
buildRosPackage {
  pname = "ros-melodic-four-wheel-steering-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/four_wheel_steering_controller/0.14.3-0.tar.gz;
    sha256 = "48e4ae7cd1abdc9a712f3b0d388f047a474e942bebcdefd40cfb5da9890676fd";
  };

  checkInputs = [ controller-manager rostest std-srvs rosgraph-msgs ];
  propagatedBuildInputs = [ nav-msgs controller-interface urdf-geometry-parser realtime-tools tf four-wheel-steering-msgs ];
  nativeBuildInputs = [ nav-msgs controller-interface urdf-geometry-parser realtime-tools catkin tf four-wheel-steering-msgs ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    #license = lib.licenses.BSD;
  };
}
