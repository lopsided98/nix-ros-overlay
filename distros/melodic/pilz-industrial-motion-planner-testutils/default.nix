
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-commander, moveit-core, moveit-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-planner-testutils";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/pilz_industrial_motion_planner_testutils/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "603fe2048ede53337529ef90ca92e6cb7745fd9946223dac259dc12488734264";
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
