
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, rm-description, rm-gazebo, rm-hw, rm-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-control";
  version = "0.1.7-r4";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_control/0.1.7-4.tar.gz";
    name = "0.1.7-4.tar.gz";
    sha256 = "0605a9c780415c3c261d3a10eb8dc0c0bc4bbd6b36f022ab85a5b6e53dd627a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common rm-description rm-gazebo rm-hw rm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package of rm_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
