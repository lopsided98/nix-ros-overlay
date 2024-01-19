
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-wfov-camera-msgs";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/noetic/wfov_camera_msgs/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "15a433e1d9cd61751a4e471c109f2fc7ecb9bcf803ab4a7ed2e1b61d01153f1a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
