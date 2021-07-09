
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gnss-utils, mavros, mavros-commands, mavros-msgs, roscpp, sensor-msgs, std-msgs, uav-msgs }:
buildRosPackage {
  pname = "ros-melodic-waypoints-manager";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/waypoints_manager/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "875bd4a481d14f56b28fbe5091662f207643f64a6ef1c9492db6c73c7ee173e1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs gnss-utils mavros mavros-commands mavros-msgs roscpp sensor-msgs std-msgs uav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Waypoints Manager package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
