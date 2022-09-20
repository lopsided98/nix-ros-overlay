
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, rostest, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-pf-description";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/PepperlFuchs/pf_lidar_ros_driver-release/archive/release/melodic/pf_description/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "302e3c7f6a0642e3a8819f56eef5e2c9967c1a93ac1cd3cc3055f21e29852597";
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
