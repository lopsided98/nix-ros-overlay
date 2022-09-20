
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, message-generation, message-runtime, pcl-conversions, pcl-ros, pkg-config, rail-manipulation-msgs, roscpp, roslib, sensor-msgs, std-srvs, tf, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rail-segmentation";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rail_segmentation/archive/release/melodic/rail_segmentation/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "90dbf547d486e651a658a8c6819f15b03c6a0d48cf217a559bd772689a768ed6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pkg-config ];
  propagatedBuildInputs = [ boost libyamlcpp message-runtime pcl-conversions pcl-ros rail-manipulation-msgs roscpp roslib sensor-msgs std-srvs tf tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Segmentation Functionality from the RAIL Lab'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
