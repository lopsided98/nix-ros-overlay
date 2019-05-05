
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, message-generation, message-runtime, nodelet, dynamic-reconfigure, roscpp, openni2 }:
buildRosPackage {
  pname = "ros-lunar-openni2-camera";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni2_camera-release/archive/release/lunar/openni2_camera/0.4.2-0.tar.gz;
    sha256 = "45538f8d31f4e850b877f6e864bf2d695e8263e3f67b72fad0c264906abe7ecd";
  };

  buildInputs = [ camera-info-manager image-transport sensor-msgs roscpp message-generation dynamic-reconfigure nodelet openni2 ];
  propagatedBuildInputs = [ camera-info-manager image-transport sensor-msgs message-runtime nodelet dynamic-reconfigure roscpp openni2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers for the Asus Xtion and Primesense Devices. For using a kinect
  with ROS, try the <a href="http://wiki.ros.org/freenect_stack">freenect stack</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
