
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, pluginlib, tf, rosunit, image-transport, eigen, object-recognition-msgs, sensor-msgs, octomap, rosconsole, moveit-core, message-filters, catkin, cv-bridge, roscpp, libGLU, libGL, freeglut, moveit-msgs, glew, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-perception";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_perception/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "fa2c95f22921e83cf57f12c582307cb98ae169c8f65c77692fc3eef88e8273b6";
  };

  buildType = "catkin";
  buildInputs = [ urdf pluginlib tf image-transport eigen object-recognition-msgs sensor-msgs octomap rosconsole moveit-core message-filters cv-bridge roscpp libGLU libGL freeglut moveit-msgs glew tf-conversions ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ moveit-core sensor-msgs message-filters urdf octomap pluginlib tf libGLU libGL image-transport freeglut cv-bridge moveit-msgs roscpp glew tf-conversions rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
