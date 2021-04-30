
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py }:
buildRosPackage {
  pname = "ros-foxy-slider-publisher";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/foxy/slider_publisher/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "32cd644d8107e3573bc68eaa103ce05de211dab7532f9350b77fbfe9e0465bd8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message.'';
    license = with lib.licenses; [ mit ];
  };
}
