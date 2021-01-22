
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, robotnik-sensors, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-description";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rb1_base_common-release/archive/release/kinetic/rb1_base_description/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "0a253a76260528c5e2d31d1664250bd5aa267c0085af3ed4d91b143cf5afbb09";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher robotnik-sensors urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
