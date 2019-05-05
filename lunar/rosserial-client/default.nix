
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, catkin, rosserial-msgs, rospy, std-msgs, tf, rosunit }:
buildRosPackage {
  pname = "ros-lunar-rosserial-client";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_client/0.7.7-0.tar.gz;
    sha256 = "98ff710d9e5d56e023cc7d8849d403f2125c2d74b06b6fc2a54d1d364b22a49e";
  };

  checkInputs = [ rosserial-msgs rosunit ];
  propagatedBuildInputs = [ rosbash rosserial-msgs rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generalized client side source for rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
