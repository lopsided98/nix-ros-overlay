
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py }:
buildRosPackage {
  pname = "ros-foxy-slider-publisher";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/foxy/slider_publisher/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "7715b3d46594607c62853e0730287afc8115c0064e095ba1a15d8058595f4075";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message.'';
    license = with lib.licenses; [ mit ];
  };
}
