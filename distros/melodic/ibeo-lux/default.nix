
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ibeo-core, ibeo-msgs, network-interface, pcl-ros, roscpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ibeo-lux";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/astuff/ibeo_lux-release/archive/release/melodic/ibeo_lux/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "0aa9797cbee3936a930074405e44de2f604c0eaf99b7b4e6b60d3773243a0fb3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs ibeo-core ibeo-msgs network-interface pcl-ros roscpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for IBEO LUX'';
    license = with lib.licenses; [ mit ];
  };
}
