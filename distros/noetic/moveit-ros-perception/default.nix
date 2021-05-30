
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen, freeglut, glew, image-transport, libGL, libGLU, llvmPackages, message-filters, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, moveit-ros-planning, nodelet, object-recognition-msgs, pluginlib, rosconsole, roscpp, rosunit, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-perception";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_perception/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "e1f1d35c2ce626072dc7bfd4148fd9696b84993d989c214f10bab4620f522f64";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport libGL libGLU llvmPackages.openmp message-filters moveit-core moveit-msgs moveit-ros-occupancy-map-monitor moveit-ros-planning nodelet object-recognition-msgs pluginlib rosconsole roscpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt connecting to perception'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
