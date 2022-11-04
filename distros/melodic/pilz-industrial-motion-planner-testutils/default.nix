
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-commander, moveit-core, moveit-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-planner-testutils";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/pilz_industrial_motion_planner_testutils/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "516466ee10be9ac92fdf8807a5b81788c0f0c68cfa451206f6bf15c4de1bbe8f";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
