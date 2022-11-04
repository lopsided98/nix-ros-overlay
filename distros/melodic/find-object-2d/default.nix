
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, message-filters, message-generation, message-runtime, qt5, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-find-object-2d";
  version = "0.6.4-r2";

  src = fetchurl {
    url = "https://github.com/introlab/find_object_2d-release/archive/release/melodic/find_object_2d/0.6.4-2.tar.gz";
    name = "0.6.4-2.tar.gz";
    sha256 = "bb19a36951a2bd531bd45af05d8b1a98084eb5eb3042f700f9bc7e77260d9648";
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
