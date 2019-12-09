
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, hardware-interface, pluginlib, urdfdom, cmake-modules, catkin, rosunit, roscpp, angles, pr2-hardware-interface, rostest, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mechanism-model";
  version = "1.8.17";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/kinetic/pr2_mechanism_model/1.8.17-0.tar.gz";
    name = "1.8.17-0.tar.gz";
    sha256 = "41c5eee47237de565b014a15d1fe68d1ea8bd49f5cf41b038e03823c55642283";
  };

  buildType = "catkin";
  buildInputs = [ urdf hardware-interface pluginlib urdfdom cmake-modules rosunit roscpp angles pr2-hardware-interface rostest kdl-parser ];
  propagatedBuildInputs = [ urdf hardware-interface pluginlib urdfdom roscpp angles pr2-hardware-interface kdl-parser ];
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
