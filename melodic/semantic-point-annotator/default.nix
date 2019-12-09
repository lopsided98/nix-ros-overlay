
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, catkin, tf, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-semantic-point-annotator";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/semantic_point_annotator/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "283e91edafb9350032916638065c04e42bebbc22cd49e9b5caaf60c4a1f56522";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros eigen tf roscpp ];
  propagatedBuildInputs = [ pcl-ros eigen tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node which annotates 3D point cloud data with semantic labels.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
