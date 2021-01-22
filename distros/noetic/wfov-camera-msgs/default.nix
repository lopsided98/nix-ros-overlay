
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-wfov-camera-msgs";
  version = "0.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/noetic/wfov_camera_msgs/0.15.0-1.tar.gz";
    name = "0.15.0-1.tar.gz";
    sha256 = "fa2494db9b9b17f019705378aae3e21916120d81e7b0b6ed58382186e34267fb";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
