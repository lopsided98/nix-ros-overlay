
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pcl, pcl-ros, roscpp, std-srvs, tf2, tf2-msgs, tf2-ros, vtkWithQt4 }:
buildRosPackage {
  pname = "ros-kinetic-rc-cloud-accumulator";
  version = "1.0.4";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_cloud_accumulator-release/archive/release/kinetic/rc_cloud_accumulator/1.0.4-0.tar.gz";
    name = "1.0.4-0.tar.gz";
    sha256 = "9f7218122b8d827536e815a96fb251fbc1c84bca566678eb4bea2b3b2bcbeedd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs pcl pcl-ros roscpp std-srvs tf2 tf2-msgs tf2-ros vtkWithQt4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A viewer for the SLAM component of roboception based on ROS and PCL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
