
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-iron-slider-publisher";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/iron/slider_publisher/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "a6a9719488c2a661fd9600a0c44c4184b5971d51773cd3d4c649ba92fa0df96a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.scipy rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.'';
    license = with lib.licenses; [ mit ];
  };
}
