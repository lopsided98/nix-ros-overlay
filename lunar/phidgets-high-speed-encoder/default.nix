
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, libphidget21, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-phidgets-high-speed-encoder";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/phidgets_high_speed_encoder/0.7.8-1.tar.gz;
    sha256 = "cf881a802905f9994f6fda096249234f2a8c50255accb02544bb642b09cb9644";
  };

  buildInputs = [ phidgets-api libphidget21 sensor-msgs message-generation std-msgs roscpp ];
  propagatedBuildInputs = [ phidgets-api libphidget21 sensor-msgs message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
