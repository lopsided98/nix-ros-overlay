
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, nodelet, dynamic-reconfigure, roscpp, libuvc }:
buildRosPackage {
  pname = "ros-lunar-libuvc-camera";
  version = "0.0.10-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/lunar/libuvc_camera/0.0.10-1.tar.gz;
    sha256 = "bf421ac7035b8857015eec1f9ed7c726b7fdfc67e50bc7590b3120bbe936463b";
  };

  buildInputs = [ dynamic-reconfigure camera-info-manager image-transport sensor-msgs nodelet libuvc roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure camera-info-manager image-transport sensor-msgs nodelet libuvc roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''USB Video Class camera driver'';
    #license = lib.licenses.BSD;
  };
}
