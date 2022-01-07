
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-commander, moveit-core, moveit-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-planner-testutils";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/pilz_industrial_motion_planner_testutils/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "6b8242a81b56af9c66d42f774bc4e3928b8f3a2c48b76197fb02786554d72db2";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
