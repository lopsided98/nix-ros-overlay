
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, rm-description, rm-gazebo, rm-hw, rm-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-control";
  version = "0.1.7-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_control/0.1.7-3.tar.gz";
    name = "0.1.7-3.tar.gz";
    sha256 = "cced513a80e500ac41365668df44ef4df96f78c2a016b6b6fc4636f00fe1f3f5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common rm-description rm-gazebo rm-hw rm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package of rm_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
