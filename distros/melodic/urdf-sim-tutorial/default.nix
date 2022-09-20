
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, gazebo-ros, gazebo-ros-control, joint-state-controller, position-controllers, robot-state-publisher, rqt-robot-steering, rviz, urdf-tutorial, xacro }:
buildRosPackage {
  pname = "ros-melodic-urdf-sim-tutorial";
  version = "0.4.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_sim_tutorial-release/archive/release/melodic/urdf_sim_tutorial/0.4.0-0.tar.gz";
    name = "0.4.0-0.tar.gz";
    sha256 = "520f94f7fe52250069283fc7bdd40b734e9153bdcc11b76309fe9522972d8f77";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller gazebo-ros gazebo-ros-control joint-state-controller position-controllers robot-state-publisher rqt-robot-steering rviz urdf-tutorial xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urdf_sim_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
