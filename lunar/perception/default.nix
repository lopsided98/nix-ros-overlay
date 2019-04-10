
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-pipeline, vision-opencv, ros-base, image-common, catkin, image-transport-plugins, laser-pipeline, perception-pcl }:
buildRosPackage {
  pname = "ros-lunar-perception";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/lunar/perception/1.3.2-0.tar.gz;
    sha256 = "855a4c27a0be1af848a5116080decb73f0064aebc6bc3e3423632d2ec4f40d5b";
  };

  propagatedBuildInputs = [ image-pipeline laser-pipeline perception-pcl ros-base vision-opencv image-common image-transport-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    #license = lib.licenses.BSD;
  };
}
