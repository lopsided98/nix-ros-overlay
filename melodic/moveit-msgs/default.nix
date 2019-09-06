
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, actionlib-msgs, trajectory-msgs, sensor-msgs, catkin, octomap-msgs, message-generation, message-runtime, object-recognition-msgs, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-msgs";
  version = "0.10.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_msgs-release/archive/release/melodic/moveit_msgs/0.10.0-0.tar.gz";
    name = "0.10.0-0.tar.gz";
    sha256 = "d1053ffe57d739fff282835af4753e39f484acad8a596049f8dc97825abeb881";
  };

  buildType = "catkin";
  buildInputs = [ shape-msgs actionlib-msgs trajectory-msgs sensor-msgs octomap-msgs message-generation object-recognition-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs actionlib-msgs trajectory-msgs sensor-msgs octomap-msgs message-runtime object-recognition-msgs std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and actions used by MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
