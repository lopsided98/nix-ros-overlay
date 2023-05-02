
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-msgs, mrpt-msgs-bridge, mrpt2, nav-msgs, pose-cov-ops, roscpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-mrpt-localization";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_localization/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "eef988e9ab2ea3c88e5a05c2fe6cd73af610ab04ab829df27d8a433cecafa272";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-msgs mrpt-msgs-bridge mrpt2 nav-msgs pose-cov-ops roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
	The interface is similar to amcl (https://wiki.ros.org/amcl)
   but supports different particle-filter algorithms, several grid maps at
   different heights, range-only localization, etc.'';
    license = with lib.licenses; [ bsdOriginal bsdOriginal ];
  };
}
