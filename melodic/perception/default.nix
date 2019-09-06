
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-pipeline, vision-opencv, ros-base, image-common, catkin, image-transport-plugins, laser-pipeline, perception-pcl }:
buildRosPackage {
  pname = "ros-melodic-perception";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/perception/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "f6024982eaa029dafbe20bd1e533f46766f9731a485a837e4a450331f5594126";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-pipeline vision-opencv ros-base image-common image-transport-plugins laser-pipeline perception-pcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
