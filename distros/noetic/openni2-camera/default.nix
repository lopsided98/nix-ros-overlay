
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, dynamic-reconfigure, image-transport, message-generation, message-runtime, nodelet, openni2, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-openni2-camera";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/noetic/openni2_camera/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "c1999fe5f544d9983e2edeb3db4fe197f54039ee907809621e13cd8d981a9bf6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ camera-info-manager dynamic-reconfigure image-transport message-runtime nodelet openni2 roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers for the Asus Xtion and Primesense Devices. For using a kinect
  with ROS, try the <a href="http://wiki.ros.org/freenect_stack">freenect stack</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
