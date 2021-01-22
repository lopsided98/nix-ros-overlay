
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-aruco-msgs";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/kinetic/aruco_msgs/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "ca90755d497b4ccfc1ced8b457a1e99bfc1dad143e36aa7318b42ce55209245a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The aruco_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
