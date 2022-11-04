
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget21, phidgets-api, phidgets-high-speed-encoder, phidgets-ik, phidgets-imu, phidgets-msgs }:
buildRosPackage {
  pname = "ros-melodic-phidgets-drivers";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_drivers/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "76ba15fc6d2c454eb9f3682958cba17cc221c2c26d3b22628b4417570a3b6c8d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libphidget21 phidgets-api phidgets-high-speed-encoder phidgets-ik phidgets-imu phidgets-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ "BSD-&-LGPL" ];
  };
}
