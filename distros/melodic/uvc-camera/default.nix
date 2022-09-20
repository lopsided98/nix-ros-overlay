
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, image-transport, libv4l, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-uvc-camera";
  version = "0.2.7";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/melodic/uvc_camera/0.2.7-0.tar.gz";
    name = "0.2.7-0.tar.gz";
    sha256 = "3a760fad6164fa6a5ed47d7cd6302f5378bae282f5018dc568d2666b867cdb46";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager image-transport libv4l nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of node(let)s that stream images from USB cameras (UVC)
     and provide CameraInfo messages to consumers. Includes a
     two-camera node that provides rough synchronization
     for stereo vision.

     Currently uses the base driver from Morgan Quigley's uvc_cam package.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
