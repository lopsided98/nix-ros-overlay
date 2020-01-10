
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-melodic-gencpp";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gencpp-release/archive/release/melodic/gencpp/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "d5b03777119dd51d50536b5e9613f00b0bb7558f363ed7f7358b8ceb8062b154";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
