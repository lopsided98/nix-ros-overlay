
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-bridge, mrpt-msgs, mrpt1, nav-msgs, pose-cov-ops, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-localization";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_localization/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "a2441bb65631066f24dd9917d58656dc4c89f6d91705511fd2c286d5808d971a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-bridge mrpt-msgs mrpt1 nav-msgs pose-cov-ops roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
	The interface is similar to amcl (http://wiki.ros.org/amcl)
   but supports different particle-filter algorithms, several grid maps at
   different heights, range-only localization, etc.'';
    license = with lib.licenses; [ bsdOriginal bsdOriginal ];
  };
}
