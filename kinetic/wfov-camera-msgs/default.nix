
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-generation, message-runtime, catkin }:
buildRosPackage {
  pname = "ros-kinetic-wfov-camera-msgs";
  version = "0.13.4";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/wfov_camera_msgs/0.13.4-0.tar.gz";
    name = "0.13.4-0.tar.gz";
    sha256 = "b3874667fc02b1385570b3e98270083e1bbc26e91c69d00b5e38cfbc652d3192";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
