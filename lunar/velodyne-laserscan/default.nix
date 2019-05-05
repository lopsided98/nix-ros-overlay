
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, rostest, dynamic-reconfigure, roslaunch, nodelet }:
buildRosPackage {
  pname = "ros-lunar-velodyne-laserscan";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/lunar/velodyne_laserscan/1.5.2-0.tar.gz;
    sha256 = "3b25326bcd3ae625aaeffe51db157c19c6193206fd2cc7bfa87b3ae80fd692f1";
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
