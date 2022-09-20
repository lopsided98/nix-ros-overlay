
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-wrapper }:
buildRosPackage {
  pname = "ros-melodic-slime-ros";
  version = "0.4.16-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/slime_ros/0.4.16-1.tar.gz";
    name = "0.4.16-1.tar.gz";
    sha256 = "626705c68ddf409fb0990f686038f71cef98a8742cc1118cb0cc186fc7949f43";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosemacs roslisp sbcl slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions for slime to assist in working with ROS packages'';
    license = with lib.licenses; [ "PD" ];
  };
}
