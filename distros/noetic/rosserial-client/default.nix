
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy, rosserial-msgs, rosunit, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rosserial-client";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_client/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "a3cf4f05fe54991f7eb6e2e5235f768009321baa9206b37c9be37f300c1df103";
  };

  buildType = "catkin";
  checkInputs = [ rosserial-msgs rosunit ];
  propagatedBuildInputs = [ rosbash rospy rosserial-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generalized client side source for rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
