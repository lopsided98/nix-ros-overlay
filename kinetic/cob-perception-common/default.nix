
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-perception-msgs, cob-image-flip, cob-object-detection-msgs, cob-vision-utils, catkin, cob-object-detection-visualizer, cob-3d-mapping-msgs, cob-cam3d-throttle }:
buildRosPackage {
  pname = "ros-kinetic-cob-perception-common";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_perception_common/0.6.13-0.tar.gz;
    sha256 = "f3b2965a6e98235a214956a19a475ddd90bdc1b99bf264321d92f59df14e4c35";
  };

  propagatedBuildInputs = [ cob-object-detection-visualizer cob-perception-msgs cob-3d-mapping-msgs cob-image-flip cob-object-detection-msgs cob-vision-utils cob-cam3d-throttle ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack provides utilities commonly needed for a variety of computer vision tasks.'';
    #license = lib.licenses.Apache 2.0;
  };
}
