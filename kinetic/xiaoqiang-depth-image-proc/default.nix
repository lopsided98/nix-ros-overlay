
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, image-transport, sensor-msgs, cv-bridge, catkin, message-filters, tf2-ros, image-geometry, tf2, nav-msgs, eigen-conversions, nodelet, stereo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-depth-image-proc";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_depth_image_proc/0.0.12-0.tar.gz;
    sha256 = "76d314e6b6de79d52965706fc95142a1d725a9217752477b30581473519a4eec";
  };

  propagatedBuildInputs = [ tf2 boost nodelet image-transport eigen-conversions cv-bridge tf2-ros image-geometry ];
  nativeBuildInputs = [ boost cmake-modules image-transport sensor-msgs cv-bridge message-filters catkin tf2-ros image-geometry tf2 nav-msgs eigen-conversions nodelet stereo-msgs ];

  meta = {
    description = ''Modified version of depth image process, add occupancy xyz

     Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    #license = lib.licenses.MIT;
  };
}
