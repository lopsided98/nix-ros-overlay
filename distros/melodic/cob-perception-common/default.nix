
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-3d-mapping-msgs, cob-cam3d-throttle, cob-image-flip, cob-object-detection-msgs, cob-object-detection-visualizer, cob-perception-msgs, cob-vision-utils }:
buildRosPackage {
  pname = "ros-melodic-cob-perception-common";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_perception_common/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "a2ff2398b452ff71c341e93e5803198ed5835fca680625c6fd032565b030a42b";
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
