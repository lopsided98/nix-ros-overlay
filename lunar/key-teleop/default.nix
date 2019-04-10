
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-lunar-key-teleop";
  version = "0.2.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_tools-release/archive/release/lunar/key_teleop/0.2.6-0.tar.gz;
    sha256 = "85c050d6213ed70e3bf9ee28ea9ec04a16fe9d99580b0f69d03eee5695e497bb";
  };

  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A text-based interface to send a robot movement commands'';
    #license = lib.licenses.BSD;
  };
}
