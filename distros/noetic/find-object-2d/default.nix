
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, message-filters, message-generation, message-runtime, qt5, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-find-object-2d";
  version = "0.6.3-r5";

  src = fetchurl {
    url = "https://github.com/introlab/find_object_2d-release/archive/release/noetic/find_object_2d/0.6.3-5.tar.gz";
    name = "0.6.3-5.tar.gz";
    sha256 = "a8e5130cd08ff78be8b6837bf44e8474bd5637e58af118ff9b4f7f193119d25c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge image-transport message-filters message-runtime qt5.qtbase roscpp rospy sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The find_object_2d package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
