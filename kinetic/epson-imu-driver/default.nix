
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-epson-imu-driver";
  version = "0.0.2";

  src = fetchurl {
    url = https://bitbucket.org/castacks/epson_g364_imu_driver-release/get/release/kinetic/epson_imu_driver/0.0.2-0.tar.gz;
    sha256 = "3e1567ad16d1937541595ebd3e05e0ef1920f35beac9b380c660eb171cf5dd1c";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin rospy std-msgs sensor-msgs roscpp ];

  meta = {
    description = ''The epson_imu_driver package'';
    #license = lib.licenses.TODO;
  };
}
