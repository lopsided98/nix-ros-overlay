
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rocon-console, rocon-launch, rocon-python-utils, roslaunch, rospy, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rocon-test";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_test/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "63ef29e75e746b6e69e12d4883e563739c5d4c534fea2a5e065d2599e71b1c8f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rocon-console rocon-launch rocon-python-utils roslaunch rospy rostest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rocon test framework (i.e. multi-launch rostest framework).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
