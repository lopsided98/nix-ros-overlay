
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-jsk-footstep-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/jsk_footstep_msgs/4.3.1-0.tar.gz";
    name = "4.3.1-0.tar.gz";
    sha256 = "c461c1a447cca272bbd283203796ec6126bb42b6ae13b953f22193d574e49251";
  };

  buildType = "catkin";
  buildInputs = [ message-generation geometry-msgs actionlib-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_footstep_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
