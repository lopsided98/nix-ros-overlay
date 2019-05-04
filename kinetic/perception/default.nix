
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-pipeline, vision-opencv, ros-base, image-common, catkin, image-transport-plugins, laser-pipeline, perception-pcl }:
buildRosPackage {
  pname = "ros-kinetic-perception";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/perception/1.3.2-0.tar.gz;
    sha256 = "f2056efa3e940652e10818c6536a3e318c13a4ab00df8c45251e51f4005e57ce";
  };

  propagatedBuildInputs = [ image-pipeline vision-opencv ros-base image-common image-transport-plugins laser-pipeline perception-pcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
