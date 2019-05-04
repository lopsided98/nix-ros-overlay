
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, octomap-server, map-server, catkin, footstep-planner }:
buildRosPackage {
  pname = "ros-kinetic-op3-navigation";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_navigation/0.2.2-0.tar.gz;
    sha256 = "94f01f62264441cffe4778a5ac591593ad9aa24774b79e4180941381100f101b";
  };

  propagatedBuildInputs = [ octomap-server map-server footstep-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is for generating footsteps of ROBOTIS-OP3.
    It has several config files and launch files in order to use footstep planner package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
