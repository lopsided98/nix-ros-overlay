
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, tf, catkin, phidgets-api, nodelet, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-melodic-phidgets-ik";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_ik/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "f7b6b527e58c2e93b61612f57ca708a383e6082de8774ea467a33eea0fae3e25";
  };

  buildType = "catkin";
  buildInputs = [ message-generation sensor-msgs geometry-msgs std-msgs tf nodelet roscpp phidgets-api ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs message-runtime std-msgs tf nodelet roscpp phidgets-api ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
