
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, tf, sensor-msgs, catkin, message-generation, message-runtime, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-phidgets-ik";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_ik/0.7.8-1.tar.gz;
    sha256 = "67c0cf362886a9f706cea5925ad22e53a6e266c950dd166dbe3119e4dc9db06e";
  };

  buildInputs = [ phidgets-api sensor-msgs roscpp message-generation nodelet std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ phidgets-api sensor-msgs roscpp message-runtime nodelet std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
