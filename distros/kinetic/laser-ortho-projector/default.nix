
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-filters, nodelet, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-laser-ortho-projector";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/laser_ortho_projector/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "8c946a9d9355a0669979fe7a960d820d3bc68b10b2fae22bc5795bbd25bbba6f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-filters nodelet pcl pcl-conversions pcl-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_ortho_projector package calculates orthogonal projections of LaserScan messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
