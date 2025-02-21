
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-msgs";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_msgs/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "54c13c4a2e3468c7eb9a66f9c5b604342f86a9807dcc800e4e2ebe47dcc2bf77";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Package to keep interface independent of the driver";
    license = with lib.licenses; [ mit ];
  };
}
