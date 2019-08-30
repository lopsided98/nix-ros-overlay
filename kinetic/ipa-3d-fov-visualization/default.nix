
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, cv-bridge, image-geometry, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ipa-3d-fov-visualization";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/ipa_3d_fov_visualization/0.6.14-1.tar.gz;
    sha256 = "a410ad161b1c9a56e6a2e306d58ed2dabcc20a44573e2988577df5d0498e96dc";
  };

  buildInputs = [ sensor-msgs cv-bridge image-geometry visualization-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs cv-bridge image-geometry visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ipa_3d_fov_visualization package'';
    license = with lib.licenses; [ asl20 ];
  };
}
