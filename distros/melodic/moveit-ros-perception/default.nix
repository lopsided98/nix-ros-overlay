
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen, freeglut, glew, image-transport, libGL, libGLU, llvmPackages, message-filters, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, moveit-ros-planning, nodelet, object-recognition-msgs, pluginlib, rosconsole, roscpp, rosunit, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-perception";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_perception/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "5c123b1daa18790372aa6bd1e8d4bca2e9f41b20b107996b102fb26be56ea346";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport libGL libGLU llvmPackages.openmp message-filters moveit-core moveit-msgs moveit-ros-occupancy-map-monitor moveit-ros-planning nodelet object-recognition-msgs pluginlib rosconsole roscpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
