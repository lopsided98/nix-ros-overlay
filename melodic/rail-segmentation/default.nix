
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, boost, libyamlcpp, sensor-msgs, catkin, tf2-ros, roscpp, pkg-config, tf2, roslib, rail-manipulation-msgs, message-generation, message-runtime, pcl-ros, tf, pcl-conversions }:
buildRosPackage {
  pname = "ros-melodic-rail-segmentation";
  version = "0.1.13-r1";

  src = fetchurl {
    url = https://github.com/gt-rail-release/rail_segmentation/archive/release/melodic/rail_segmentation/0.1.13-1.tar.gz;
    sha256 = "29d9af2bbd8e7ead64bd84b8ab8bbf2911044c772de9a5d77913d927a52b0cb0";
  };

  buildInputs = [ std-srvs boost libyamlcpp sensor-msgs pkg-config tf2-ros roscpp roslib tf2 message-generation rail-manipulation-msgs pcl-ros tf pcl-conversions ];
  propagatedBuildInputs = [ std-srvs boost libyamlcpp sensor-msgs roscpp tf2-ros roslib tf2 rail-manipulation-msgs message-runtime pcl-ros tf pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Segmentation Functionality from the RAIL Lab'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
