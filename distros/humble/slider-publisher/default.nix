
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-slider-publisher";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/humble/slider_publisher/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "475eaebac81b1489dd12a7aa06ccd56dcaeabbb743ccc61f1e9179752dd80cd7";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.scipy rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.'';
    license = with lib.licenses; [ mit ];
  };
}
