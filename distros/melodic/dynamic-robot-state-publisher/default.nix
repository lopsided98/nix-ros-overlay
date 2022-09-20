
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, kdl-parser, robot-state-publisher, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-dynamic-robot-state-publisher";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/peci1/dynamic_robot_state_publisher-release/archive/release/melodic/dynamic_robot_state_publisher/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "d31428da9f939d33337bd61e9cefca16a4d820d208c3d75637999dc912d6629e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure kdl-parser robot-state-publisher roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS robot_state_publisher which can update the robot model via dynamic_reconfigure.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
