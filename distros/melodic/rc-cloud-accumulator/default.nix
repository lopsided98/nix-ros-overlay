
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pcl, pcl-ros, roscpp, std-srvs, tf2, tf2-msgs, tf2-ros, vtkWithQt5 }:
buildRosPackage {
  pname = "ros-melodic-rc-cloud-accumulator";
  version = "1.0.4";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_cloud_accumulator-release/archive/release/melodic/rc_cloud_accumulator/1.0.4-0.tar.gz";
    name = "1.0.4-0.tar.gz";
    sha256 = "6356622f9801312add690a710948202c253adab5a5540ae0875e9bca83c8ee40";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs pcl pcl-ros roscpp std-srvs tf2 tf2-msgs tf2-ros vtkWithQt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A viewer for the SLAM component of roboception based on ROS and PCL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
