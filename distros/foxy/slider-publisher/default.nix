
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-foxy-slider-publisher";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/foxy/slider_publisher/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "8372f1621e5c216568059aead95a75f5c46b0944217d8675f8528f90637e2ee9";
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
