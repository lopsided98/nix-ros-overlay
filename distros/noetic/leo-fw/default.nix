
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-msgs, libyamlcpp, nav-msgs, python3Packages, roscpp, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-leo-fw";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/leo_fw/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "bc87102d915f7bfd65aee57a81a942bd22a5729a7b77adbe308debf7238d8ee7";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ leo-msgs libyamlcpp nav-msgs python3Packages.numpy python3Packages.rospkg python3Packages.whichcraft roscpp rosgraph rosmon-msgs rosnode rospy rosservice sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Binary releases of Leo Rover firmware and related utilities'';
    license = with lib.licenses; [ mit ];
  };
}
