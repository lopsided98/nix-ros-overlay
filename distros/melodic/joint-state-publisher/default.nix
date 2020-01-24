
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-joint-state-publisher";
  version = "1.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/melodic/joint_state_publisher/1.12.14-1.tar.gz";
    name = "1.12.14-1.tar.gz";
    sha256 = "b2c30af5afd1e6796feb427ae60526e4485a3dfc565502814bed9bdf73a71e14";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
