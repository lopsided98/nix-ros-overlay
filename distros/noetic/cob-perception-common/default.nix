
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-3d-mapping-msgs, cob-cam3d-throttle, cob-image-flip, cob-object-detection-msgs, cob-object-detection-visualizer, cob-perception-msgs, cob-vision-utils }:
buildRosPackage {
  pname = "ros-noetic-cob-perception-common";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_perception_common/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "b5bee071918694d4e16ef09dc827756fdcd6c686861155aedae73c23b9ebf9be";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-3d-mapping-msgs cob-cam3d-throttle cob-image-flip cob-object-detection-msgs cob-object-detection-visualizer cob-perception-msgs cob-vision-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This stack provides utilities commonly needed for a variety of computer vision tasks.";
    license = with lib.licenses; [ asl20 ];
  };
}
