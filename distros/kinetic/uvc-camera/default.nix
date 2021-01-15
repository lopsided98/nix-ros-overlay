
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, image-transport, libv4l, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uvc-camera";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/kinetic/uvc_camera/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "8030386cedd18de89882da3d7701676d4f9d771a74a2e4db87c1f51133cad395";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager image-transport libv4l nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of node(let)s that stream images from USB cameras (UVC)
     and provide CameraInfo messages to consumers. Includes a
     two-camera node that provides rough synchronization
     for stereo vision.

     Currently uses the base driver from Morgan Quigley's uvc_cam package.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
