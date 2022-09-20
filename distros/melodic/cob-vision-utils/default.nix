
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-vision-utils";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_vision_utils/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "daca617cb07fd45d5cefd25dcbe5ddd06ee6a91edf323f709ce565b92f604340";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains utilities used within the object detection tool chain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
