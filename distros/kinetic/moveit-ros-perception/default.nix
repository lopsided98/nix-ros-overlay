
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen, freeglut, glew, image-transport, libGL, libGLU, message-filters, moveit-core, moveit-msgs, object-recognition-msgs, octomap, pluginlib, rosconsole, roscpp, rosunit, sensor-msgs, tf, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-perception";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_perception/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "fa2c95f22921e83cf57f12c582307cb98ae169c8f65c77692fc3eef88e8273b6";
  };

  buildType = "catkin";
  buildInputs = [ eigen object-recognition-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport libGL libGLU message-filters moveit-core moveit-msgs octomap pluginlib rosconsole roscpp sensor-msgs tf tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
