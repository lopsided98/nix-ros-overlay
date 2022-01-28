
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-msgs, nav-msgs, python3Packages, roscpp, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-leo-fw";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_fw/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "e2b093da980a6f30d82cd4fe98fe3ed3615ec759f0ed6070c352bea85788f250";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-msgs nav-msgs python3Packages.rospkg python3Packages.whichcraft roscpp rosgraph rosmon-msgs rosnode rospy rosservice sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Binary releases of Leo Rover firmware and related utilities'';
    license = with lib.licenses; [ mit ];
  };
}
