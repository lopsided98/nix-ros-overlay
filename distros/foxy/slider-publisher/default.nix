
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-foxy-slider-publisher";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/slider_publisher-release/archive/release/foxy/slider_publisher/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "78106c6508f801ef4086fa012dfc558c9568fbafc0ba9ad51a8e76311ce567cc";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.scipy rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.'';
    license = with lib.licenses; [ mit ];
  };
}
