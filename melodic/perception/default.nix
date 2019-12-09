
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport-plugins, perception-pcl, image-pipeline, catkin, image-common, laser-pipeline, vision-opencv, ros-base }:
buildRosPackage {
  pname = "ros-melodic-perception";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/perception/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "f6024982eaa029dafbe20bd1e533f46766f9731a485a837e4a450331f5594126";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-transport-plugins perception-pcl image-pipeline image-common laser-pipeline vision-opencv ros-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
