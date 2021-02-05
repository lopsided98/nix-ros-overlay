
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, dynamic-reconfigure, image-transport, message-generation, message-runtime, nodelet, openni2, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-openni2-camera";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/kinetic/openni2_camera/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "44069a5b26600f562b6b74bf55f0591e2c14b111bc877527015127d261d285b5";
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
