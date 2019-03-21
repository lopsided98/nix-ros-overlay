
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rospatlite";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/rospatlite/2.1.11-0.tar.gz;
    sha256 = "707b8676ce6a4c437dae350d950d2c0b589cf9eb19dabfa3053847ce1d052c65";
  };

  propagatedBuildInputs = [ std-msgs rospy ];
  nativeBuildInputs = [ std-msgs catkin rospy ];

  meta = {
    description = ''rospatlite'';
    #license = lib.licenses.BSD;
  };
}
