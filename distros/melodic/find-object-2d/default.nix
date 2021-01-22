
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, genmsg, image-transport, message-filters, qt5, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-find-object-2d";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/introlab/find_object_2d-release/archive/release/melodic/find_object_2d/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "7f868aa64cabd58c39cc11179f4d935c4c8399d9ebc5a59a561f352831eae527";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-transport message-filters qt5.qtbase roscpp rospy sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin genmsg ];

  meta = {
    description = ''The find_object_2d package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
