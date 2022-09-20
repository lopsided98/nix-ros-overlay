
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nodelet, roscpp, roslaunch, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-velodyne-laserscan";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/melodic/velodyne_laserscan/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "7a79ee1a1f2efe7e9e20695fea816a595f442ad661d13a345a918df1a9e39fa3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserScan message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
