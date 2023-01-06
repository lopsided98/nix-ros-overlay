
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-tools";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_tools/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "b8f321481b85e2ce16643ba0356f417858bc08e8bd70954645d3db89a8bf67cf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
