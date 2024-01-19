
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, rostest, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-pf-description";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/PepperlFuchs/pf_lidar_ros_driver-release/archive/release/noetic/pf_description/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "e3dbb3a0801529e49456c53545ef3e6ed84b607cd28872d4152ec4b45d12624e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pf_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
