
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, message-filters, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-posedetection-msgs";
  version = "4.3.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/noetic/posedetection_msgs/4.3.2-1.tar.gz";
    name = "4.3.2-1.tar.gz";
    sha256 = "9b7873709badd4ba3d027944f28f7eb11e5f79d8a9bfde2bcb5f5dd663170938";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs message-filters message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''posedetection_msgs provides messages and services to facilitate passing pose detection results and features.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
