
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, roslaunch, roslint, rviz }:
buildRosPackage {
  pname = "ros-kinetic-gundam-rx78-description";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/kinetic/gundam_rx78_description/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "66964402687c54b3c58013ccd60ad418aa33786cc272e850c1183d3285f9d2c8";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_rx78_description contains the ROS URDF file of the GUNDAM RX-78 robot'';
    license = with lib.licenses; [ "TERMS OF USE FOR GUNDAM RESEARCH OPEN SIMULATOR Attribution-NonCommercial-ShareAlike" bsdOriginal ];
  };
}
