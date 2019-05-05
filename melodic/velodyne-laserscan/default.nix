
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, rostest, dynamic-reconfigure, roslaunch, nodelet }:
buildRosPackage {
  pname = "ros-melodic-velodyne-laserscan";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/melodic/velodyne_laserscan/1.5.2-0.tar.gz;
    sha256 = "7a79ee1a1f2efe7e9e20695fea816a595f442ad661d13a345a918df1a9e39fa3";
  };

  buildInputs = [ sensor-msgs roscpp nodelet dynamic-reconfigure ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ sensor-msgs roscpp nodelet dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserScan message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
