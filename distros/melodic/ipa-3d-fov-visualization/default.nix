
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ipa-3d-fov-visualization";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/ipa_3d_fov_visualization/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "c2c16ed332dc5ab010e04b3aad8f9dc46805d1ca1c777ce7c8b01483b95c13b0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-geometry roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ipa_3d_fov_visualization package allows to visualize the field-of-view of a camera.'';
    license = with lib.licenses; [ asl20 ];
  };
}
