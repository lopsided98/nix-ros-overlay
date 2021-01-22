
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy, rosserial-msgs, rosunit, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-client";
  version = "0.7.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_client/0.7.7-0.tar.gz";
    name = "0.7.7-0.tar.gz";
    sha256 = "723cf26954e6b01cda5036a7145362a401d19021e5e58ccec9ee5ca50f96ef4f";
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
