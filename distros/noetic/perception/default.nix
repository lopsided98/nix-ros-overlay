
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-common, image-pipeline, image-transport-plugins, laser-pipeline, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-noetic-perception";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/noetic/perception/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "13be696a9b374687d002e1b040ddc16f33931c1b5dc9c2f8e802bc510cb1a541";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ image-common image-pipeline image-transport-plugins laser-pipeline perception-pcl ros-base vision-opencv ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
