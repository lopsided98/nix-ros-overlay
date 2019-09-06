
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, slime-wrapper, rosemacs, catkin, roslisp, sbcl }:
buildRosPackage {
  pname = "ros-melodic-slime-ros";
  version = "0.4.13";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/slime_ros/0.4.13-0.tar.gz";
    name = "0.4.13-0.tar.gz";
    sha256 = "6bfbb259a012cdddcccf9a39af143ba7468decfddb79d77b76be096b31b7a358";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosemacs roslisp slime-wrapper sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions for slime to assist in working with ROS packages'';
    license = with lib.licenses; [ publicDomain ];
  };
}
