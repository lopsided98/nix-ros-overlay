
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-pr2-hardware-interface";
  version = "1.8.18-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/noetic/pr2_hardware_interface/1.8.18-1.tar.gz";
    name = "1.8.18-1.tar.gz";
    sha256 = "d5db1ae2046e093858fd1173e54ec11f759df74d4b27d8fbf2831c5edbd98e66";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the C++ interfaces to the PR2 hardware
  components that are controlled over EtherCAT. This includes the
  motors and encoders needed to control the PR2 mechanism, as well as
  components like the pressure sensors in the fingertips, camera
  triggers, etc... All of the hardware components in this interface are
  directly available to the controllers inside the hard realtime
  control loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
