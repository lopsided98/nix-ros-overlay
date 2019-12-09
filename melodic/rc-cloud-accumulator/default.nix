
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, geometry-msgs, std-srvs, catkin, tf2, pcl, vtkWithQt4, tf2-msgs, roscpp, nav-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rc-cloud-accumulator";
  version = "1.0.4";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_cloud_accumulator-release/archive/release/melodic/rc_cloud_accumulator/1.0.4-0.tar.gz";
    name = "1.0.4-0.tar.gz";
    sha256 = "6356622f9801312add690a710948202c253adab5a5540ae0875e9bca83c8ee40";
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
