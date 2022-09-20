
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ipa-3d-fov-visualization";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/ipa_3d_fov_visualization/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "4a41d4d5b8188500255a594b9f8ed89274c1619d55af61c5bc1a03e67c7f504d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-geometry roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ipa_3d_fov_visualization package allows to visualize the field-of-view of a camera.'';
    license = with lib.licenses; [ asl20 ];
  };
}
