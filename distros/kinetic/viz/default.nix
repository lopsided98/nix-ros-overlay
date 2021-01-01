
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-base, rqt-common-plugins, rqt-robot-plugins, rviz }:
buildRosPackage {
  pname = "ros-kinetic-viz";
  version = "1.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/viz/1.3.2-0.tar.gz";
    name = "1.3.2-0.tar.gz";
    sha256 = "14529b13b3f4c475e085bba31c71e55f639788f2bcbb333d9b2813b95bb0b093";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ros-base rqt-common-plugins rqt-robot-plugins rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
