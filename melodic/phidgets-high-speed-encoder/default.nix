
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, std-msgs, catkin, libphidget21, phidgets-api, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-melodic-phidgets-high-speed-encoder";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_high_speed_encoder/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "d8b29845e8756bb602a1f63c030a3efee27fed46755d94574d696952ecdc05ef";
  };

  buildType = "catkin";
  buildInputs = [ message-generation sensor-msgs std-msgs libphidget21 roscpp phidgets-api ];
  propagatedBuildInputs = [ sensor-msgs message-runtime std-msgs libphidget21 roscpp phidgets-api ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
