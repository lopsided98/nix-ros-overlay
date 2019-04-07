
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, emacs, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosemacs";
  version = "0.4.13";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/rosemacs/0.4.13-0.tar.gz;
    sha256 = "80a2911c8cf86b70a771060e8304d9234b375b2f221fb42e63bfe5bfbf8f36a1";
  };

  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS tools for those who live in Emacs.'';
    #license = lib.licenses.BSD;
  };
}