
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-base, rqt-common-plugins, rqt-robot-plugins, rviz }:
buildRosPackage {
  pname = "ros-melodic-viz";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/viz/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "c2cdc23508adf393957c192b8d62b0278260342d34dbcc58a3bac3abbd61dcf4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-base rqt-common-plugins rqt-robot-plugins rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
