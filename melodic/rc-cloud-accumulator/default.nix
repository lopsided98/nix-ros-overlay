
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf2-msgs, pcl, catkin, tf2-ros, tf2, nav-msgs, vtkWithQt4, roscpp, pcl-ros, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-cloud-accumulator";
  version = "1.0.4";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_cloud_accumulator-release/archive/release/melodic/rc_cloud_accumulator/1.0.4-0.tar.gz;
    sha256 = "6356622f9801312add690a710948202c253adab5a5540ae0875e9bca83c8ee40";
  };

  buildInputs = [ std-srvs tf2-msgs pcl tf2-ros tf2 nav-msgs vtkWithQt4 roscpp pcl-ros geometry-msgs ];
  propagatedBuildInputs = [ std-srvs tf2-msgs pcl tf2-ros tf2 nav-msgs vtkWithQt4 roscpp pcl-ros geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A viewer for the SLAM component of roboception based on ROS and PCL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
