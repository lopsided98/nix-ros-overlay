
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cartesian-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/cartesian_msgs-release/archive/release/noetic/cartesian_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "427c2c1230df05e280ed460acc844e45c32f3cb64cc1d6b868d14d75848b7afe";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stream cartesian commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
