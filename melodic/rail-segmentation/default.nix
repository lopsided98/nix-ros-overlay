
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, rail-manipulation-msgs, boost, sensor-msgs, message-runtime, std-srvs, tf, catkin, roscpp, roslib, libyamlcpp, pcl-conversions, tf2, pkg-config, message-generation, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rail-segmentation";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rail_segmentation/archive/release/melodic/rail_segmentation/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "90dbf547d486e651a658a8c6819f15b03c6a0d48cf217a559bd772689a768ed6";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros rail-manipulation-msgs boost sensor-msgs std-srvs tf roslib roscpp libyamlcpp pcl-conversions tf2 pkg-config message-generation tf2-ros ];
  propagatedBuildInputs = [ pcl-ros rail-manipulation-msgs sensor-msgs boost std-srvs tf roslib roscpp libyamlcpp pcl-conversions tf2 message-runtime tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Segmentation Functionality from the RAIL Lab'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
