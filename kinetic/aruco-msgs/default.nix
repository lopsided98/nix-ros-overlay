
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-aruco-msgs";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/pal-gbp/aruco_ros-release/archive/release/kinetic/aruco_msgs/0.2.3-0.tar.gz;
    sha256 = "ca90755d497b4ccfc1ced8b457a1e99bfc1dad143e36aa7318b42ce55209245a";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The aruco_msgs package'';
    #license = lib.licenses.BSD;
  };
}
