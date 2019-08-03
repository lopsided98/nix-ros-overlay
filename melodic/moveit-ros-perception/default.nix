
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, freeglut, octomap, image-transport, message-filters, moveit-core, libGL, tf2-geometry-msgs, catkin, tf2-ros, urdf, moveit-msgs, libGLU, roscpp, eigen, pluginlib, sensor-msgs, tf2, tf2-eigen, object-recognition-msgs, glew, rosunit }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-perception";
  version = "1.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_perception/1.0.2-1.tar.gz;
    sha256 = "0a8638101732055e5933e49417462de4594a41c707c520e90704f920d6452c8e";
  };

  buildInputs = [ rosconsole cv-bridge freeglut octomap image-transport message-filters moveit-core libGL tf2-geometry-msgs tf2-ros urdf libGLU moveit-msgs roscpp eigen pluginlib sensor-msgs tf2 tf2-eigen object-recognition-msgs glew ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rosconsole cv-bridge freeglut octomap image-transport message-filters moveit-core libGL tf2-geometry-msgs tf2-ros urdf libGLU moveit-msgs roscpp pluginlib sensor-msgs tf2 tf2-eigen object-recognition-msgs glew ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
