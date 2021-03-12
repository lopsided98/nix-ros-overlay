
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-digital-inputs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_digital_inputs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "92813a56daf204152b99a1d41b67093ccda583ae6f878bbe7d7fa6c5d2ce7114";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Digital Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
