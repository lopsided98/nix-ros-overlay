
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-crb15000-support, abb-driver, abb-irb120-support, abb-irb1200-support, abb-irb1600-support, abb-irb2400-support, abb-irb2600-support, abb-irb4400-support, abb-irb4600-support, abb-irb52-support, abb-irb5400-support, abb-irb6600-support, abb-irb6640-support, abb-irb6650s-support, abb-irb6700-support, abb-irb7600-support, abb-resources, catkin }:
buildRosPackage {
  pname = "ros-noetic-abb";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/noetic/abb/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "02c5e07e4ab89585cdc18e6f3d1e00bd5551c4c3a5ff8276a805b84ab776e564";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ abb-crb15000-support abb-driver abb-irb120-support abb-irb1200-support abb-irb1600-support abb-irb2400-support abb-irb2600-support abb-irb4400-support abb-irb4600-support abb-irb52-support abb-irb5400-support abb-irb6600-support abb-irb6640-support abb-irb6650s-support abb-irb6700-support abb-irb7600-support abb-resources ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS-Industrial support for ABB manipulators (metapackage).";
    license = with lib.licenses; [ bsd3 asl20 ];
  };
}
