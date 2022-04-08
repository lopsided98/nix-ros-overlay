
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, rm-description, rm-gazebo, rm-hw, rm-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-control";
  version = "0.1.9-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_control/0.1.9-3.tar.gz";
    name = "0.1.9-3.tar.gz";
    sha256 = "3026be0baedc1d4e8f6989022b2dc839bc99a21d2a36b3c5d62e18a9d8d3990b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common rm-description rm-gazebo rm-hw rm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package of rm_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
