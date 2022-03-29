
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py }:
buildRosPackage {
  pname = "ros-galactic-slider-publisher";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/galactic/slider_publisher/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "525137f72228fdee500deeef844d9271be4c543c5442fd7e5107d3d67143ca20";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message.'';
    license = with lib.licenses; [ mit ];
  };
}
