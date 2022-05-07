
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py }:
buildRosPackage {
  pname = "ros-foxy-slider-publisher";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/foxy/slider_publisher/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "f8d6ff59786a362a617368a2c277020e4c20e40bfd591e6218026a8975b9e995";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message.'';
    license = with lib.licenses; [ mit ];
  };
}
