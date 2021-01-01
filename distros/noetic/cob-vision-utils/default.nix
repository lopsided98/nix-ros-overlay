
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-vision-utils";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_vision_utils/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "9b9538ccb43aeb613befe6036c209c696d86d0d391407e773052501940635d92";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains utilities used within the object detection tool chain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
