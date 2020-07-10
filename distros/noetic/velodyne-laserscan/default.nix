
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nodelet, roscpp, roslaunch, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-velodyne-laserscan";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_laserscan/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "b41a82000caa5ffb71abef4e56447be313859394d948d68ce6d22691c5d7f521";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserScan message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
