
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy, rosserial-msgs, rosunit, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rosserial-client";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_client/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "3c32e2f835061019584dcf2b71709e35472bc2052e53269514b61c8663965406";
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
