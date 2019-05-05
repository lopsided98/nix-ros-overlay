
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-hardware-interface";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/pr2_hardware_interface/1.8.18-0.tar.gz;
    sha256 = "1d0850403a292b06382875d413a17bea8ccc7e7d41eb88bb524ed014bfa4fc20";
  };

  buildInputs = [ roscpp geometry-msgs ];
  propagatedBuildInputs = [ roscpp geometry-msgs ];
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
