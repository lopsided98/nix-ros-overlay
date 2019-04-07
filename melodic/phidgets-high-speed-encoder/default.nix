
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, libphidget21, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-phidgets-high-speed-encoder";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_high_speed_encoder/0.7.7-0.tar.gz;
    sha256 = "462219fb56f8ef2d8fbcf1b6237a6313fc1c5612f883cb0385ef3bfd5ae7f063";
  };

  buildInputs = [ phidgets-api message-generation libphidget21 std-msgs sensor-msgs roscpp ];
  propagatedBuildInputs = [ phidgets-api message-runtime libphidget21 std-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    #license = lib.licenses.BSD;
  };
}
