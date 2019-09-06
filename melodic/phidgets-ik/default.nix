
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, tf, sensor-msgs, catkin, message-generation, message-runtime, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-phidgets-ik";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_ik/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "f7b6b527e58c2e93b61612f57ca708a383e6082de8774ea467a33eea0fae3e25";
  };

  buildType = "catkin";
  buildInputs = [ phidgets-api sensor-msgs roscpp message-generation nodelet std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ phidgets-api sensor-msgs roscpp message-runtime nodelet std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
