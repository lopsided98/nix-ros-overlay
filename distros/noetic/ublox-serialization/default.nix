
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization }:
buildRosPackage {
  pname = "ros-noetic-ublox-serialization";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/noetic/ublox_serialization/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "20074e162992ec6207586b72344c2ab8dab07cad30d63af6e705a25a8fb01378";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
