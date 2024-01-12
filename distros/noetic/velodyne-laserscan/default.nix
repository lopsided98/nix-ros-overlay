
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nodelet, roscpp, roslaunch, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-velodyne-laserscan";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_laserscan/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "341bf6a4773deb0266a8afb12db34c069c9d03e2ebc34fdd269c367d2064a35c";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserScan message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
