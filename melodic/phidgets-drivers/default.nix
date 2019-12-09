
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-imu, catkin, libphidget21, phidgets-high-speed-encoder, phidgets-api }:
buildRosPackage {
  pname = "ros-melodic-phidgets-drivers";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_drivers/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "1fa07e01b428610e87697521a0b1f0b8b543b0f44a0e8ce34e08c6424f025a78";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ phidgets-api phidgets-imu libphidget21 phidgets-high-speed-encoder ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
