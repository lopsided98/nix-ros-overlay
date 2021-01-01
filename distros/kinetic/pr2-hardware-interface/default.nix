
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pr2-hardware-interface";
  version = "1.8.17";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/kinetic/pr2_hardware_interface/1.8.17-0.tar.gz";
    name = "1.8.17-0.tar.gz";
    sha256 = "2325399c2b0e184d68d238fe83eae8eba6ca70c27d7f9a590e3a9e0e4bca3533";
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
