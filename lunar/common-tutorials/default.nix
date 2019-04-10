
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtle-actionlib, nodelet-tutorial-math, catkin, pluginlib-tutorials, actionlib-tutorials }:
buildRosPackage {
  pname = "ros-lunar-common-tutorials";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/lunar/common_tutorials/0.1.10-0.tar.gz;
    sha256 = "ce1af544a99ff31d9f16f11dbf97a1463c0b88017132dfd4bc03883832442716";
  };

  propagatedBuildInputs = [ nodelet-tutorial-math pluginlib-tutorials actionlib-tutorials turtle-actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that contains common tutorials'';
    #license = lib.licenses.BSD;
  };
}
