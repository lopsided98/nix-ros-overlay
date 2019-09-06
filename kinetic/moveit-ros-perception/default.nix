
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, octomap, tf-conversions, tf, image-transport, message-filters, moveit-core, libGL, catkin, urdf, moveit-msgs, libGLU, roscpp, eigen, pluginlib, sensor-msgs, glew, object-recognition-msgs, freeglut, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-perception";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_perception/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "fa2c95f22921e83cf57f12c582307cb98ae169c8f65c77692fc3eef88e8273b6";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole cv-bridge freeglut octomap tf-conversions tf image-transport message-filters moveit-core libGL urdf libGLU moveit-msgs roscpp eigen pluginlib sensor-msgs object-recognition-msgs glew ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rosconsole pluginlib tf libGLU sensor-msgs image-transport message-filters cv-bridge glew libGL octomap urdf moveit-core tf-conversions moveit-msgs freeglut roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
