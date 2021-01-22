
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-driver, abb-irb2400-moveit-config, abb-irb2400-moveit-plugins, abb-irb2400-support, abb-irb4400-support, abb-irb5400-support, abb-irb6600-support, abb-irb6640-moveit-config, abb-irb6640-support, abb-resources, catkin }:
buildRosPackage {
  pname = "ros-kinetic-abb";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "172675468ac6d1a0fc84e05458c0e1367df6031fd33c3bec6af95251ac5103ba";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ abb-driver abb-irb2400-moveit-config abb-irb2400-moveit-plugins abb-irb2400-support abb-irb4400-support abb-irb5400-support abb-irb6600-support abb-irb6640-moveit-config abb-irb6640-support abb-resources ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support for ABB manipulators (metapackage).'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
