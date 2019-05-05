
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, libphidget21, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-phidgets-high-speed-encoder";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/phidgets_high_speed_encoder/0.7.7-0.tar.gz;
    sha256 = "471b3d5caeef64c16036af2960eb61b3b151c3dbd193de65a878e58370dd9bd9";
  };

  buildInputs = [ phidgets-api libphidget21 sensor-msgs message-generation std-msgs roscpp ];
  propagatedBuildInputs = [ phidgets-api libphidget21 sensor-msgs message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
