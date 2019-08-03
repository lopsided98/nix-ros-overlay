
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, boost, libyamlcpp, sensor-msgs, catkin, tf2-ros, roscpp, pkg-config, tf2, roslib, rail-manipulation-msgs, message-generation, message-runtime, pcl-ros, tf, pcl-conversions }:
buildRosPackage {
  pname = "ros-melodic-rail-segmentation";
  version = "0.1.15-r1";

  src = fetchurl {
    url = https://github.com/gt-rail-release/rail_segmentation/archive/release/melodic/rail_segmentation/0.1.15-1.tar.gz;
    sha256 = "90dbf547d486e651a658a8c6819f15b03c6a0d48cf217a559bd772689a768ed6";
  };

  buildInputs = [ std-srvs boost libyamlcpp sensor-msgs pkg-config tf2-ros roscpp roslib tf2 message-generation rail-manipulation-msgs pcl-ros tf pcl-conversions ];
  propagatedBuildInputs = [ std-srvs boost libyamlcpp sensor-msgs roscpp tf2-ros roslib tf2 rail-manipulation-msgs message-runtime pcl-ros tf pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Segmentation Functionality from the RAIL Lab'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
