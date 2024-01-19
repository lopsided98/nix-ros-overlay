
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-vision-utils";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_vision_utils/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "48ed5233202433f45c6c541e46a0cad2f5ae1c352498fcd9584300050d8897bf";
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
