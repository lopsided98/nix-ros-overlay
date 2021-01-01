
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ibeo-core, ibeo-msgs, network-interface, pcl-ros, roscpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ibeo-lux";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/ibeo_lux-release/archive/release/kinetic/ibeo_lux/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "d31476f9ed41684dcd7b7f8c13cd514873e8fe7ddb7cc1055b53f957478b50dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs ibeo-core ibeo-msgs network-interface pcl-ros roscpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for IBEO LUX'';
    license = with lib.licenses; [ mit ];
  };
}
