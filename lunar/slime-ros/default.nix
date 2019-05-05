
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, slime-wrapper, rosemacs, catkin, roslisp, sbcl }:
buildRosPackage {
  pname = "ros-lunar-slime-ros";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/lunar/slime_ros/0.4.12-0.tar.gz;
    sha256 = "2aaf6244d356bd8438f816df159cfb1ba54ca0ff27e6850685597246fed6806c";
  };

  propagatedBuildInputs = [ rosemacs roslisp slime-wrapper sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions for slime to assist in working with ROS packages'';
    license = with lib.licenses; [ publicDomain ];
  };
}
