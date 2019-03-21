
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, catkin, rosserial-msgs, rospy, std-msgs, tf, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rosserial-client";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_client/0.8.0-0.tar.gz;
    sha256 = "13062a7278b9eefc10406a7aaa3b18cf9ab2cad7b24485d9ed4e8699e86af22b";
  };

  checkInputs = [ rosserial-msgs rosunit ];
  propagatedBuildInputs = [ rosbash rospy std-msgs tf rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generalized client side source for rosserial.'';
    #license = lib.licenses.BSD;
  };
}
