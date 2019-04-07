
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, message-generation, message-runtime, nodelet, dynamic-reconfigure, roscpp, openni2 }:
buildRosPackage {
  pname = "ros-kinetic-openni2-camera";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni2_camera-release/archive/release/kinetic/openni2_camera/0.4.2-0.tar.gz;
    sha256 = "d01fc898832787534385208a526942d811fc3974eee6c50ed59b8865752270a3";
  };

  buildInputs = [ message-generation dynamic-reconfigure camera-info-manager image-transport sensor-msgs nodelet roscpp openni2 ];
  propagatedBuildInputs = [ message-runtime nodelet dynamic-reconfigure camera-info-manager image-transport sensor-msgs roscpp openni2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers for the Asus Xtion and Primesense Devices. For using a kinect
  with ROS, try the <a href="http://wiki.ros.org/freenect_stack">freenect stack</a>'';
    #license = lib.licenses.BSD;
  };
}
