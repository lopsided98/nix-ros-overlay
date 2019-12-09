
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, std-msgs, catkin, pcl-msgs, pcl, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pcl-conversions";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/pcl_conversions/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "3e7994bc21f63d0a4f4de8475c70bd018cccbe17cf7fa797bc746ebeeb9337ef";
  };

  buildType = "catkin";
  checkInputs = [ sensor-msgs std-msgs pcl-msgs pcl eigen roscpp ];
  propagatedBuildInputs = [ sensor-msgs std-msgs pcl-msgs pcl eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
