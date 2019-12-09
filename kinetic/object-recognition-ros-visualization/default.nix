
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, object-recognition-ros, pluginlib, catkin, rviz, object-recognition-msgs }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-ros-visualization";
  version = "0.3.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_ros_visualization-release/archive/release/kinetic/object_recognition_ros_visualization/0.3.8-0.tar.gz";
    name = "0.3.8-0.tar.gz";
    sha256 = "3c5a611d2f1d9504213727daf4671b91a6deaac35210f8f9b1d087d1402461c9";
  };

  buildType = "catkin";
  buildInputs = [ boost object-recognition-ros pluginlib rviz object-recognition-msgs ];
  propagatedBuildInputs = [ boost object-recognition-ros pluginlib rviz object-recognition-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''object_recognition_ros_visualization contains rviz plugins to visualize ork detection results'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
