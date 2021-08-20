
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py }:
buildRosPackage {
  pname = "ros-foxy-slider-publisher";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/foxy/slider_publisher/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "01b7914b50f8a8efbe30490bf31a87432db54760d97976b56f860061dfd34c8d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message.'';
    license = with lib.licenses; [ mit ];
  };
}
