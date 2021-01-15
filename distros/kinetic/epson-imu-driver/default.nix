
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-epson-imu-driver";
  version = "0.0.2";

  src = fetchurl {
    url = "https://bitbucket.org/castacks/epson_g364_imu_driver-release/get/release/kinetic/epson_imu_driver/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "3e1567ad16d1937541595ebd3e05e0ef1920f35beac9b380c660eb171cf5dd1c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The epson_imu_driver package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
