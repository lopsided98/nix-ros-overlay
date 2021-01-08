
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, message-generation, message-runtime, pcl-conversions, pcl-ros, pkg-config, rail-manipulation-msgs, roscpp, roslib, sensor-msgs, std-srvs, tf, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-rail-segmentation";
  version = "0.1.12";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rail_segmentation/archive/release/kinetic/rail_segmentation/0.1.12-0.tar.gz";
    name = "0.1.12-0.tar.gz";
    sha256 = "2bfe45cb8efdf45b4d53b41bb6bff97f396797c08483b51aa5d7e560d6e1e976";
  };

  buildType = "catkin";
  buildInputs = [ message-generation pkg-config ];
  propagatedBuildInputs = [ boost libyamlcpp message-runtime pcl-conversions pcl-ros rail-manipulation-msgs roscpp roslib sensor-msgs std-srvs tf tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Segmentation Functionality from the RAIL Lab'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
