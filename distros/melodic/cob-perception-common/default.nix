
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-3d-mapping-msgs, cob-cam3d-throttle, cob-image-flip, cob-object-detection-msgs, cob-object-detection-visualizer, cob-perception-msgs, cob-vision-utils }:
buildRosPackage {
  pname = "ros-melodic-cob-perception-common";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_perception_common/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "04403c8155733ee09b9b684ee03c35ce0206103616fd92068626fa7c435ce9d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-3d-mapping-msgs cob-cam3d-throttle cob-image-flip cob-object-detection-msgs cob-object-detection-visualizer cob-perception-msgs cob-vision-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack provides utilities commonly needed for a variety of computer vision tasks.'';
    license = with lib.licenses; [ asl20 ];
  };
}
