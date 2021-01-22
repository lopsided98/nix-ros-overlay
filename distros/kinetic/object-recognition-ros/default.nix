
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, boost, catkin, cmake-modules, ecto, ecto-image-pipeline, ecto-ros, geometric-shapes, object-recognition-core, object-recognition-msgs, pluginlib, rostest, rostopic, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-ros";
  version = "0.3.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_ros-release/archive/release/kinetic/object_recognition_ros/0.3.7-0.tar.gz";
    name = "0.3.7-0.tar.gz";
    sha256 = "9da5485f0e80811676a5a09e80e4f5f1945f94f5e963774cf371b35825383d75";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ rostest visualization-msgs ];
  propagatedBuildInputs = [ actionlib boost ecto ecto-image-pipeline ecto-ros geometric-shapes object-recognition-core object-recognition-msgs pluginlib rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''object_recognition_core contains tools to launch several recognition pipelines, train objects, store models ...'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
