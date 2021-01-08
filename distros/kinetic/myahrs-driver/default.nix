
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-myahrs-driver";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/robotpilot/myahrs_driver-release/archive/release/kinetic/myahrs_driver/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "4468064f639bf769b565657f3ef92e0962bd14155387437fa7725ec7b1684ba1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''myahrs_driver is a driver package for the WITHROBOT's myAHRS+. The myAHRS+ is a low cost high performance AHRS(Attitude Heading Reference System) with USB/UART/I2C interface. The myAHRS+ board contains a 3-axis 16-bit gyroscope, a 3-axis 16-bit accelerometer and a 3-axis 13-bit magnetometer. The driver should also work with USB port.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
