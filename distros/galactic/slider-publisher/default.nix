
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py }:
buildRosPackage {
  pname = "ros-galactic-slider-publisher";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/galactic/slider_publisher/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "422dac2ae3a2d53b0314e99bf19996c72e7e1f6733dcfa4c87b894407a3a1b38";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message.'';
    license = with lib.licenses; [ mit ];
  };
}
