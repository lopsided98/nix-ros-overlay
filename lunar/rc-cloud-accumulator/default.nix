
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf2-msgs, pcl, catkin, tf2-ros, tf2, nav-msgs, vtkWithQt4, roscpp, pcl-ros, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rc-cloud-accumulator";
  version = "1.0.4";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_cloud_accumulator-release/archive/release/lunar/rc_cloud_accumulator/1.0.4-0.tar.gz;
    sha256 = "e4a26bc9912c82b89ca390860f33015ee5b9f6c9d4f3bc786af7a318f1cd0717";
  };

  buildInputs = [ std-srvs tf2-msgs pcl tf2-ros tf2 nav-msgs vtkWithQt4 roscpp pcl-ros geometry-msgs ];
  propagatedBuildInputs = [ std-srvs tf2-msgs pcl tf2-ros tf2 nav-msgs vtkWithQt4 roscpp pcl-ros geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A viewer for the SLAM component of roboception based on ROS and PCL'';
    #license = lib.licenses.BSD;
  };
}
