
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, geometry-msgs, std-srvs, catkin, tf2, pcl, vtkWithQt4, tf2-msgs, roscpp, nav-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-rc-cloud-accumulator";
  version = "1.0.4";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_cloud_accumulator-release/archive/release/kinetic/rc_cloud_accumulator/1.0.4-0.tar.gz";
    name = "1.0.4-0.tar.gz";
    sha256 = "9f7218122b8d827536e815a96fb251fbc1c84bca566678eb4bea2b3b2bcbeedd";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros geometry-msgs std-srvs tf2 pcl vtkWithQt4 tf2-msgs roscpp nav-msgs tf2-ros ];
  propagatedBuildInputs = [ pcl-ros geometry-msgs std-srvs tf2 pcl vtkWithQt4 tf2-msgs roscpp nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A viewer for the SLAM component of roboception based on ROS and PCL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
