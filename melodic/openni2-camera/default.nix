
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, dynamic-reconfigure, camera-info-manager, catkin, openni2, image-transport, nodelet, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-openni2-camera";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/melodic/openni2_camera/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "d154919dd68c19a6255bbbafd1d238d30baae4e6b146eb17875002511180181f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure camera-info-manager openni2 image-transport nodelet roscpp message-generation ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure camera-info-manager openni2 image-transport nodelet roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers for the Asus Xtion and Primesense Devices. For using a kinect
  with ROS, try the <a href="http://wiki.ros.org/freenect_stack">freenect stack</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
