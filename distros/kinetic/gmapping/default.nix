
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, nodelet, openslam-gmapping, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-kinetic-gmapping";
  version = "1.3.10";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_gmapping-release/archive/release/kinetic/gmapping/1.3.10-0.tar.gz";
    name = "1.3.10-0.tar.gz";
    sha256 = "e54fb8de5e303382abaee579b4ec620a92e48d981a0c785b68382a13243623a0";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ nav-msgs nodelet openslam-gmapping roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a ROS wrapper for OpenSlam's Gmapping. 
  The gmapping package provides laser-based SLAM (Simultaneous Localization and Mapping), 
  as a ROS node called slam_gmapping. Using slam_gmapping, you can create a 2-D occupancy
  grid map (like a building floorplan) from laser and pose data collected by a mobile robot.'';
    license = with lib.licenses; [ "CC-BY-SA-3.0" ];
  };
}
