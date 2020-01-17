
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-tools";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_tools/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "f38f0bd20aeeaf8a353fc1e76c511d1a0aa9973772412911f012c9c046cdbfcf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
