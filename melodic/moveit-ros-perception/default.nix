
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, octomap, image-transport, message-filters, moveit-core, libGL, tf2-geometry-msgs, catkin, tf2-ros, urdf, moveit-msgs, libGLU, roscpp, eigen, pluginlib, sensor-msgs, glew, tf2, tf2-eigen, object-recognition-msgs, freeglut, rosunit }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-perception";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_perception/1.0.1-0.tar.gz;
    sha256 = "17224556fc107529db910afacec08cdd3c00af38e518e93c878bdc0d7b0faa5a";
  };

  buildInputs = [ rosconsole tf2-geometry-msgs cv-bridge tf2-ros freeglut octomap urdf libGLU moveit-msgs roscpp eigen pluginlib image-transport sensor-msgs message-filters tf2 moveit-core tf2-eigen object-recognition-msgs glew libGL ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rosconsole tf2-geometry-msgs cv-bridge tf2-ros freeglut octomap urdf libGLU moveit-msgs roscpp pluginlib image-transport sensor-msgs message-filters tf2 moveit-core tf2-eigen object-recognition-msgs glew libGL ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to perception'';
    #license = lib.licenses.BSD;
  };
}
