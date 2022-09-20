
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-filters, nodelet, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-ortho-projector";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/melodic/laser_ortho_projector/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "c5f80e123b12083739cd83a6f96d06d073ff4d904463ca7bfb6f196f35a2ac97";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-filters nodelet pcl pcl-conversions pcl-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_ortho_projector package calculates orthogonal projections of LaserScan messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
