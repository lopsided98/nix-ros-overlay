
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, roscpp, qt-gui-cpp, rospy, std-msgs, genmsg, tf }:
buildRosPackage {
  pname = "ros-lunar-find-object-2d";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/introlab/find_object_2d-release/archive/release/lunar/find_object_2d/0.6.2-0.tar.gz;
    sha256 = "7ccdfb50ab97b54e303590a3a84e913d35e0378b4b0fb5c6f1d9186032a16239";
  };

  buildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters roscpp qt-gui-cpp rospy std-msgs tf ];
  propagatedBuildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters roscpp qt-gui-cpp rospy std-msgs tf ];
  nativeBuildInputs = [ genmsg catkin ];

  meta = {
    description = ''The find_object_2d package'';
    #license = lib.licenses.BSD;
  };
}
