
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, message-filters, geometry-msgs, tf, catkin, pcl, pcl-conversions, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-laser-ortho-projector";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/laser_ortho_projector/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "8c946a9d9355a0669979fe7a960d820d3bc68b10b2fae22bc5795bbd25bbba6f";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs message-filters geometry-msgs tf pcl pcl-conversions nodelet roscpp ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs message-filters geometry-msgs tf pcl pcl-conversions nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_ortho_projector package calculates orthogonal projections of LaserScan messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
