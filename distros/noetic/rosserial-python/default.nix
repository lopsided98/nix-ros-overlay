
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, python3Packages, rospy, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-python";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_python/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "9fcfc97bb9b21e3a55698787d7b9d111481b4b7a1a605064b56154c9a18977bc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs python3Packages.pyserial rospy rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python-based implementation of the rosserial protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
