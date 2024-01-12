
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-3d-mapping-msgs, cob-cam3d-throttle, cob-image-flip, cob-object-detection-msgs, cob-object-detection-visualizer, cob-perception-msgs, cob-vision-utils }:
buildRosPackage {
  pname = "ros-noetic-cob-perception-common";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_perception_common/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "f5cd06f99e618d50e13e1a5c79858d58d464414ebcf3db9c90feb4082ef8bcaa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-3d-mapping-msgs cob-cam3d-throttle cob-image-flip cob-object-detection-msgs cob-object-detection-visualizer cob-perception-msgs cob-vision-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack provides utilities commonly needed for a variety of computer vision tasks.'';
    license = with lib.licenses; [ asl20 ];
  };
}
