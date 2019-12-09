
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, pluginlib, rosunit, image-transport, eigen, tf2, object-recognition-msgs, sensor-msgs, octomap, tf2-geometry-msgs, rosconsole, tf2-ros, moveit-core, message-filters, catkin, cv-bridge, roscpp, libGLU, libGL, tf2-eigen, freeglut, moveit-msgs, glew }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-perception";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_perception/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "0a8638101732055e5933e49417462de4594a41c707c520e90704f920d6452c8e";
  };

  buildType = "catkin";
  buildInputs = [ urdf pluginlib image-transport eigen tf2 object-recognition-msgs sensor-msgs octomap tf2-geometry-msgs rosconsole tf2-ros moveit-core message-filters cv-bridge roscpp libGLU libGL tf2-eigen freeglut moveit-msgs glew ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ urdf pluginlib image-transport tf2 object-recognition-msgs sensor-msgs octomap tf2-geometry-msgs rosconsole tf2-ros moveit-core message-filters cv-bridge roscpp libGLU libGL tf2-eigen freeglut moveit-msgs glew ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
