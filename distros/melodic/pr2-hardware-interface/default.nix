
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pr2-hardware-interface";
  version = "1.8.20-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_hardware_interface/1.8.20-1.tar.gz";
    name = "1.8.20-1.tar.gz";
    sha256 = "9ce45f51e932c93e2b463687e8b2a00756aa97f885b00636c9d2095f9b09b7d6";
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
