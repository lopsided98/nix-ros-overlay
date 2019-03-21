
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, emacs, catkin }:
buildRosPackage {
  pname = "ros-melodic-slime-wrapper";
  version = "0.4.13";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/slime_wrapper/0.4.13-0.tar.gz;
    sha256 = "e2a2cbbdcc477518699369b9a35fdfb1dd21ca3e9fed2615fe87c1a5fea1eea5";
  };

  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for slime'';
    #license = lib.licenses.Public domain;
  };
}
