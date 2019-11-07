
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openscenegraph, roscpp, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-osg-utils";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/osg_utils/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "998d814e59307447515961ef7d7b5171d1480906c4b7520aa476194008065324";
  };

  buildType = "catkin";
  buildInputs = [ tf openscenegraph roscpp geometry-msgs ];
  propagatedBuildInputs = [ tf roscpp openscenegraph geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''osg_utils is a library that contains some classes that may be useful in ROS-OSG applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
