
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-velodyne-msgs";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/lunar/velodyne_msgs/1.5.2-0.tar.gz;
    sha256 = "753e9b0e6de84f034730c2eea1381207d5807ea0b1e9008ed95827ed35604ab9";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for Velodyne 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
