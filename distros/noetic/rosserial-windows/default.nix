
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, nav-msgs, rospy, rosserial-client, rosserial-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-windows";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_windows/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "1dd0c9743c0636ea7b95720021d1601099e645ab3e8ac81e5b32d24093bcbd7c";
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
