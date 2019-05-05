
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-footstep-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/jsk_footstep_msgs/4.3.1-0.tar.gz;
    sha256 = "c461c1a447cca272bbd283203796ec6126bb42b6ae13b953f22193d574e49251";
  };

  buildInputs = [ message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_footstep_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
