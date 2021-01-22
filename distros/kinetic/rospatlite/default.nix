
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rospatlite";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/rospatlite/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "6b8d563933bc14e1e069bc06a8aeb30e0436dd7544c804a61d68777a19539f92";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
