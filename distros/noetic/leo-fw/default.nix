
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-msgs, nav-msgs, python3Packages, roscpp, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, sensor-msgs, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-leo-fw";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_fw/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "3b7a79ea35487e6a0c5b578adb7fec52d547cca7242f8889036f41b8334e68ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ leo-msgs nav-msgs python3Packages.numpy python3Packages.rospkg python3Packages.whichcraft roscpp rosgraph rosmon-msgs rosnode rospy rosservice sensor-msgs std-srvs yaml-cpp ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Binary releases of Leo Rover firmware and related utilities'';
    license = with lib.licenses; [ mit ];
  };
}
