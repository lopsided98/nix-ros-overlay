
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, pluginlib, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-phidgets-ik";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_ik/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "1e115c59cf1c38b6a74820fe419fe520e6807930c7b8c1cb493c7a8e2a5e21e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs pluginlib roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
