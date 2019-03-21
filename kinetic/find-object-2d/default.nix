
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, image-transport, sensor-msgs, cv-bridge, catkin, message-filters, roscpp, qt-gui-cpp, rospy, std-msgs, genmsg, tf }:
buildRosPackage {
  pname = "ros-kinetic-find-object-2d";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/introlab/find_object_2d-release/archive/release/kinetic/find_object_2d/0.6.2-0.tar.gz;
    sha256 = "94e39c0827a007fca6392a1b3c6a337c6badcc8c0569c181e483c1147b77154a";
  };

  propagatedBuildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters roscpp qt-gui-cpp rospy std-msgs tf ];
  nativeBuildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters catkin roscpp qt-gui-cpp rospy std-msgs genmsg tf ];

  meta = {
    description = ''The find_object_2d package'';
    #license = lib.licenses.BSD;
  };
}
