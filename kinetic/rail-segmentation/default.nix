
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, rail-manipulation-msgs, boost, sensor-msgs, message-runtime, std-srvs, tf, catkin, roscpp, roslib, libyamlcpp, pcl-conversions, tf2, pkg-config, message-generation, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-rail-segmentation";
  version = "0.1.12";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rail_segmentation/archive/release/kinetic/rail_segmentation/0.1.12-0.tar.gz";
    name = "0.1.12-0.tar.gz";
    sha256 = "2bfe45cb8efdf45b4d53b41bb6bff97f396797c08483b51aa5d7e560d6e1e976";
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
