
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, kdl-parser, pluginlib, pr2-hardware-interface, cmake-modules, catkin, urdfdom, rostest, urdf, angles, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-pr2-mechanism-model";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/pr2_mechanism_model/1.8.18-0.tar.gz;
    sha256 = "fbed57f5101270033b36982c26a85eb0e14198db66131dc557813816797fcc25";
  };

  buildInputs = [ hardware-interface kdl-parser cmake-modules pluginlib pr2-hardware-interface urdfdom rostest urdf angles roscpp rosunit ];
  propagatedBuildInputs = [ hardware-interface kdl-parser pluginlib urdf angles pr2-hardware-interface roscpp urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
        This package contains the robot model that is used by the realtime
        controllers
        inside <a href="http://www.ros.org/wiki/pr2_controller_manager">controller
           manager</a>. This robot model focuses on controlling the robot
        mechanism in a realtime control loop, and therefore it only contains
        the components of a robot that are relevant in realtime: the robot
        joints (with encoders, transmisisons and actuators) and the
        kinematic/dynamic model of the robot.
     </p>
     <p>
        The pr2_mechanism_model package is well tested and is released with a stable API.
     </p>'';
    #license = lib.licenses.BSD;
  };
}
