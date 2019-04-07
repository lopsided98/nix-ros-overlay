
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, genmsg, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-view-controller-msgs";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/view_controller_msgs-release/archive/release/melodic/view_controller_msgs/0.1.3-0.tar.gz;
    sha256 = "9ee90391a7604f99bcc5ee9ef5f0dd0d7585247c3fd1c59f871eeee5f8cb739f";
  };

  buildInputs = [ std-msgs genmsg message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for (camera) view controllers'';
    #license = lib.licenses.BSD;
  };
}
