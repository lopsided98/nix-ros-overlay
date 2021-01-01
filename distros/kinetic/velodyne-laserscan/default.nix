
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nodelet, roscpp, roslaunch, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-laserscan";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_laserscan/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "652e6f49cef2311e8304b70314c8ec385e3d5db92de206abd24f8644de9d794f";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserScan message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
