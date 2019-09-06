
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-resources, catkin, abb-irb6640-support, abb-irb4400-support, abb-irb5400-support, abb-irb2400-moveit-config, abb-irb6640-moveit-config, abb-irb6600-support, abb-irb2400-support, abb-irb2400-moveit-plugins, abb-driver }:
buildRosPackage {
  pname = "ros-kinetic-abb";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "e832daf4d35129929c51a95a4aff60576b130161c32ecaf63a4e55d7f4044c0b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ abb-resources abb-irb6640-support abb-irb4400-support abb-irb5400-support abb-irb2400-moveit-config abb-irb6640-moveit-config abb-irb6600-support abb-irb2400-support abb-irb2400-moveit-plugins abb-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support for ABB manipulators (metapackage).'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
