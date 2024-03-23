
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-ipa-3d-fov-visualization";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/ipa_3d_fov_visualization/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "eadbbaf42127dd4f5ce9bdf0bf99a1f61ecaa1b6ae4fa7bf67767a25e7eb97b9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-geometry roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The ipa_3d_fov_visualization package allows to visualize the field-of-view of a camera.";
    license = with lib.licenses; [ asl20 ];
  };
}
