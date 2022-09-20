
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, dynamic-reconfigure, image-transport, message-generation, message-runtime, nodelet, openni2, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-openni2-camera";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/melodic/openni2_camera/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "fa0cf0baee7eec9befcbc0d00e01a6a302f002d94063e441200b95f338a15f2c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ camera-info-manager dynamic-reconfigure image-transport message-runtime nodelet openni2 roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers for the Asus Xtion and Primesense Devices. For using a kinect
  with ROS, try the <a href="http://wiki.ros.org/freenect_stack">freenect stack</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
