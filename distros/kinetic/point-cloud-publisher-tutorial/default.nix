
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-point-cloud-publisher-tutorial";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/point_cloud_publisher_tutorial/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "af1414e57e5aff44ff4f97c087c31c2ef4382ec5e691be320c3599512ea54787";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The point_cloud_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
