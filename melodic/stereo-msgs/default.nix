
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-stereo-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/stereo_msgs/1.12.7-0.tar.gz;
    sha256 = "18b3d8ec019e01a906981d524a8f1d0cc067e39f53494f1ce0a8c94e07801340";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs sensor-msgs message-generation catkin ];

  meta = {
    description = ''stereo_msgs contains messages specific to stereo processing, such as disparity images.'';
    #license = lib.licenses.BSD;
  };
}
