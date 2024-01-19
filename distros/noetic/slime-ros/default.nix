
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-wrapper }:
buildRosPackage {
  pname = "ros-noetic-slime-ros";
  version = "0.4.17-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/slime_ros/0.4.17-1.tar.gz";
    name = "0.4.17-1.tar.gz";
    sha256 = "c2005a984956b348a191f10d362ce48b3e0d4526b8c72ae31a1e7f8372918e87";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosemacs roslisp sbcl slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions for slime to assist in working with ROS packages'';
    license = with lib.licenses; [ publicDomain ];
  };
}
