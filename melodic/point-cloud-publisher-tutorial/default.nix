
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-point-cloud-publisher-tutorial";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/point_cloud_publisher_tutorial/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "0d214a51702c19e1fdfc493801baed7c5a4c23c3b543bd66f1b84500f300d96e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The point_cloud_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
