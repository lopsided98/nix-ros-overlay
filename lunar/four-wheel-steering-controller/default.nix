
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, urdf-geometry-parser, realtime-tools, catkin, rostest, rosgraph-msgs, nav-msgs, controller-interface, tf, four-wheel-steering-msgs }:
buildRosPackage {
  pname = "ros-lunar-four-wheel-steering-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/four_wheel_steering_controller/0.13.4-0.tar.gz;
    sha256 = "9d6b1217596277c7e98c3c329d5ecfeafe80fb3f2e9ed39890b38df97e7a1c82";
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
