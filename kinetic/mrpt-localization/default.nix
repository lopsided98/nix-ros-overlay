
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt1, pose-cov-ops, sensor-msgs, mrpt-msgs, dynamic-reconfigure, std-msgs, tf, catkin, mrpt-bridge, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-localization";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_localization/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "a2441bb65631066f24dd9917d58656dc4c89f6d91705511fd2c286d5808d971a";
  };

  buildType = "catkin";
  buildInputs = [ mrpt1 pose-cov-ops sensor-msgs dynamic-reconfigure mrpt-msgs std-msgs tf mrpt-bridge roscpp nav-msgs ];
  propagatedBuildInputs = [ mrpt1 pose-cov-ops sensor-msgs dynamic-reconfigure mrpt-msgs std-msgs tf mrpt-bridge roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
	The interface is similar to amcl (http://wiki.ros.org/amcl)
   but supports different particle-filter algorithms, several grid maps at
   different heights, range-only localization, etc.'';
    license = with lib.licenses; [ bsdOriginal bsdOriginal ];
  };
}
