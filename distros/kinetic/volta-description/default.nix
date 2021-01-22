
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-plugins, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-volta-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "844f1f7cfd8c10e1223536890ce66fef9b5e915b1aad6169c2f02a11b4e2ece9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-plugins roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
