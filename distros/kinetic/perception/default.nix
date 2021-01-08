
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-common, image-pipeline, image-transport-plugins, laser-pipeline, perception-pcl, ros-base, vision-opencv }:
buildRosPackage {
  pname = "ros-kinetic-perception";
  version = "1.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/perception/1.3.2-0.tar.gz";
    name = "1.3.2-0.tar.gz";
    sha256 = "f2056efa3e940652e10818c6536a3e318c13a4ab00df8c45251e51f4005e57ce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-common image-pipeline image-transport-plugins laser-pipeline perception-pcl ros-base vision-opencv ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
