
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, openscenegraph, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-osg-utils";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/osg_utils/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "44b9e6940bfb07236c1f66596c82406b2ef5d9df2be508248d24b560d31ac7f5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs openscenegraph roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''osg_utils is a library that contains some classes that may be useful in ROS-OSG applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
