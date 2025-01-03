
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-vision-utils";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_vision_utils/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "00700adc81c2996385632373984c3abd3225571000b5d25cc91a16f5ab153dd0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Contains utilities used within the object detection tool chain.";
    license = with lib.licenses; [ asl20 ];
  };
}
