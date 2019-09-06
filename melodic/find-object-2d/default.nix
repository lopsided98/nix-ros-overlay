
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, roscpp, qt5, rospy, std-msgs, genmsg, tf }:
buildRosPackage {
  pname = "ros-melodic-find-object-2d";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/introlab/find_object_2d-release/archive/release/melodic/find_object_2d/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "7f868aa64cabd58c39cc11179f4d935c4c8399d9ebc5a59a561f352831eae527";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters qt5.qtbase roscpp rospy std-msgs tf ];
  propagatedBuildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters roscpp qt5.qtbase rospy std-msgs tf ];
  nativeBuildInputs = [ genmsg catkin ];

  meta = {
    description = ''The find_object_2d package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
