
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf2-msgs, pcl, catkin, tf2-ros, tf2, nav-msgs, vtkWithQt4, roscpp, pcl-ros, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-cloud-accumulator";
  version = "1.0.4";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_cloud_accumulator-release/archive/release/kinetic/rc_cloud_accumulator/1.0.4-0.tar.gz";
    name = "1.0.4-0.tar.gz";
    sha256 = "9f7218122b8d827536e815a96fb251fbc1c84bca566678eb4bea2b3b2bcbeedd";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs tf2-msgs pcl tf2-ros tf2 nav-msgs vtkWithQt4 roscpp pcl-ros geometry-msgs ];
  propagatedBuildInputs = [ std-srvs tf2-msgs pcl tf2-ros tf2 vtkWithQt4 nav-msgs pcl-ros roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A viewer for the SLAM component of roboception based on ROS and PCL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
