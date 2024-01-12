
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-noetic-slime-wrapper";
  version = "0.4.17-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/slime_wrapper/0.4.17-1.tar.gz";
    name = "0.4.17-1.tar.gz";
    sha256 = "f4989e9033e3059e52d388718bc808a4c7c613ab02a5ecf8cae01addec9c2631";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for slime'';
    license = with lib.licenses; [ publicDomain ];
  };
}
