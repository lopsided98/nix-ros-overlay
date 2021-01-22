
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, pluginlib, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-high-speed-encoder";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_high_speed_encoder/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "3e35b666024fe2b84ea72090ece93da72c88b3d5d75bc41e5c030a46b0af1c85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs pluginlib roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
