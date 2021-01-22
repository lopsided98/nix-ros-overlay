
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, hardware-interface, kdl-parser, pluginlib, pr2-hardware-interface, roscpp, rostest, rosunit, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-model";
  version = "1.8.18";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_mechanism_model/1.8.18-0.tar.gz";
    name = "1.8.18-0.tar.gz";
    sha256 = "d20f677226a4c6286216f0b159340ec70dfc1a7473623ddd4c39c526f25947e0";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules rostest rosunit ];
  propagatedBuildInputs = [ angles hardware-interface kdl-parser pluginlib pr2-hardware-interface roscpp urdf urdfdom ];
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
