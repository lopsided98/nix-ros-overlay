
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ipa-3d-fov-visualization";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/ipa_3d_fov_visualization/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "80afe330b7b611edba8e9ab794f4db3bcc67354a19f6796ef143fefd7bc12319";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-geometry roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ipa_3d_fov_visualization package allows to visualize the field-of-view of a camera.'';
    license = with lib.licenses; [ asl20 ];
  };
}
