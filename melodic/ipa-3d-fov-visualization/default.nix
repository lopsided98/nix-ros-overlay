
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ipa-3d-fov-visualization";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/ipa_3d_fov_visualization/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "3292a38aa2ff33ae3f094e672e3e7f74e919f0dcba2b05f3bda5530b8cb557d9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-geometry roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ipa_3d_fov_visualization package'';
    license = with lib.licenses; [ asl20 ];
  };
}
