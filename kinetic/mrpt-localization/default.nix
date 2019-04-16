
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, nav-msgs, mrpt-msgs, mrpt1, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp, pose-cov-ops }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-localization";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_localization/0.1.24-0.tar.gz;
    sha256 = "9737bdc19495acfce6722e71a6c2f33dfbc56174021588e4aa324fe305462b46";
  };

  buildInputs = [ tf sensor-msgs nav-msgs mrpt-msgs mrpt1 dynamic-reconfigure std-msgs mrpt-bridge roscpp pose-cov-ops ];
  propagatedBuildInputs = [ tf sensor-msgs nav-msgs mrpt-msgs mrpt1 dynamic-reconfigure std-msgs mrpt-bridge roscpp pose-cov-ops ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
	The interface is similar to amcl (http://wiki.ros.org/amcl)
   but supports different particle-filter algorithms, several grid maps at
   different heights, range-only localization, etc.'';
    #license = lib.licenses.BSD;
  };
}
