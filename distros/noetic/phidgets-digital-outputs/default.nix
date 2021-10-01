
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-digital-outputs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_digital_outputs/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "9cc2f5304a8ecb01e65d1c0edf70a559e078fecd34676549645add6ed3e7e349";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Digital Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
