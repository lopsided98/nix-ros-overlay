
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, actionlib-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf2-msgs";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_msgs/0.6.5-0.tar.gz;
    sha256 = "27ecf00eef462615bab0dd0ff5232f6aaad8712e79bbf5912c008705f27c1d5d";
  };

  buildInputs = [ message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-generation actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
