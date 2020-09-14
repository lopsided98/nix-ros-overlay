
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, nav-msgs, rospy, rosserial-client, rosserial-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-windows";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_windows/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "3a382150d76594e65bc4b5df3f237a39b832aa07813e75ace7265c6f4acfa39e";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs nav-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ message-runtime rospy rosserial-client rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Windows platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
