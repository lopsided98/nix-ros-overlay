
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-msgs, nav-msgs, python3Packages, roscpp, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-leo-fw";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_fw/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "2be53278f90953952edafa0b613c32b127136f163956e019966c63133441220e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-msgs nav-msgs python3Packages.rospkg python3Packages.whichcraft roscpp rosgraph rosmon-msgs rosnode rospy rosservice sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Binary releases of Leo Rover firmware and related utilities'';
    license = with lib.licenses; [ mit ];
  };
}
