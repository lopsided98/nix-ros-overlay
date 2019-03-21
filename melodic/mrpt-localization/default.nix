
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, nav-msgs, mrpt-msgs, mrpt1, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp, pose-cov-ops }:
buildRosPackage {
  pname = "ros-melodic-mrpt-localization";
  version = "0.1.22";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_localization/0.1.22-0.tar.gz;
    sha256 = "a9c5c55ee30becfd534ae7acfff19329236e4425da972dbdd2ba143480cf642f";
  };

  propagatedBuildInputs = [ tf sensor-msgs nav-msgs mrpt-msgs mrpt1 dynamic-reconfigure std-msgs mrpt-bridge roscpp pose-cov-ops ];
  nativeBuildInputs = [ tf sensor-msgs catkin nav-msgs mrpt-msgs mrpt1 dynamic-reconfigure std-msgs mrpt-bridge roscpp pose-cov-ops ];

  meta = {
    description = ''Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
	The interface is similar to amcl (http://wiki.ros.org/amcl)
   but supports different particle-filter algorithms, several grid maps at
   different heights, range-only localization, etc.'';
    #license = lib.licenses.BSD;
  };
}
