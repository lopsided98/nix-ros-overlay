
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-kinetic-locomotor-msgs";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/locomotor_msgs/0.2.5-0.tar.gz;
    sha256 = "a795846d40b76f8dd6720c503fef71d1cd509907726831e3aa2bda8858d21e5b";
  };

  propagatedBuildInputs = [ message-runtime actionlib-msgs nav-2d-msgs ];
  nativeBuildInputs = [ catkin message-generation nav-2d-msgs actionlib-msgs ];

  meta = {
    description = ''Action definition for Locomotor'';
    #license = lib.licenses.BSD;
  };
}
