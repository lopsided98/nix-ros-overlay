
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-wrapper }:
buildRosPackage {
  pname = "ros-melodic-slime-ros";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/slime_ros/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "043cf95acd112b9349ef2ba71360677a7dc501f1e42b17d647f497b647b2b293";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosemacs roslisp sbcl slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions for slime to assist in working with ROS packages'';
    license = with lib.licenses; [ publicDomain ];
  };
}
