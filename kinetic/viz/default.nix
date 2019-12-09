
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-common-plugins, catkin, rviz, rqt-robot-plugins, ros-base }:
buildRosPackage {
  pname = "ros-kinetic-viz";
  version = "1.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/viz/1.3.2-0.tar.gz";
    name = "1.3.2-0.tar.gz";
    sha256 = "14529b13b3f4c475e085bba31c71e55f639788f2bcbb333d9b2813b95bb0b093";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-robot-plugins rviz rqt-common-plugins ros-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
