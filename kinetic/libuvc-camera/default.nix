
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, nodelet, dynamic-reconfigure, roscpp, libuvc }:
buildRosPackage {
  pname = "ros-kinetic-libuvc-camera";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/kinetic/libuvc_camera/0.0.10-0.tar.gz;
    sha256 = "45ec4f8ce4380d6b65c36b91412c0f4f04aa37b13462bbfba3db88e353dc6e1f";
  };

  propagatedBuildInputs = [ dynamic-reconfigure camera-info-manager image-transport sensor-msgs nodelet libuvc roscpp ];
  nativeBuildInputs = [ catkin dynamic-reconfigure camera-info-manager image-transport sensor-msgs nodelet libuvc roscpp ];

  meta = {
    description = ''USB Video Class camera driver'';
    #license = lib.licenses.BSD;
  };
}
