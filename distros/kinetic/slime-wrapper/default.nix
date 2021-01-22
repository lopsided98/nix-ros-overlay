
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-kinetic-slime-wrapper";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/kinetic/slime_wrapper/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "27de712f303ca51cca039171e0e43525d99f3129cc865979bc07d87f3c0a5267";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for slime'';
    license = with lib.licenses; [ publicDomain ];
  };
}
