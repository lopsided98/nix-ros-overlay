
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy, rosserial-msgs, rosunit, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rosserial-client";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_client/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "4f932635d00221710295d78654ff6dcef7a160d09de9dec4a194045c899d9579";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosserial-msgs rosunit ];
  propagatedBuildInputs = [ rosbash rospy rosserial-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generalized client side source for rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
