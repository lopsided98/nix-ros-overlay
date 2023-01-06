
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-slider-publisher";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/rolling/slider_publisher/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "0dae9e59bd57384a57e417ff17611136c3eae01ff3d2f104a86f684f0e9ac6cd";
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
