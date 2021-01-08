
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget21, phidgets-api, phidgets-high-speed-encoder, phidgets-ik, phidgets-imu, phidgets-msgs }:
buildRosPackage {
  pname = "ros-melodic-phidgets-drivers";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_drivers/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "6f72628611a85e25175c1ae86266adbf5dec38e276c1ca2f19602f30dc8837f8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget21 phidgets-api phidgets-high-speed-encoder phidgets-ik phidgets-imu phidgets-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
