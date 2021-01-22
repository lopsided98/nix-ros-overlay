
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cv-bridge, eigen-conversions, image-geometry, image-transport, message-filters, nav-msgs, nodelet, sensor-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-depth-image-proc";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_depth_image_proc/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "76d314e6b6de79d52965706fc95142a1d725a9217752477b30581473519a4eec";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-filters nav-msgs sensor-msgs stereo-msgs ];
  propagatedBuildInputs = [ boost cv-bridge eigen-conversions image-geometry image-transport nodelet tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Modified version of depth image process, add occupancy xyz

     Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ mit ];
  };
}
