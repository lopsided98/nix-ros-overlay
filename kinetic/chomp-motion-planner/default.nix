
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-experimental, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-chomp-motion-planner";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/chomp_motion_planner/0.9.15-0.tar.gz;
    sha256 = "4fa66a09cbc6cf1644cce94d703cdd9ad1f6cbd6ce60452935c94b6031155dd1";
  };

  buildInputs = [ moveit-experimental roscpp moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
