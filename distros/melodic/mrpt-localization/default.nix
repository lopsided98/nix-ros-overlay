
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-bridge, mrpt-msgs, mrpt1, nav-msgs, pose-cov-ops, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mrpt-localization";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_localization/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "087d02e1a4dc85b9901bf497f98489920b1f7ba2abcc2fb402ab713ba3641ea1";
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
