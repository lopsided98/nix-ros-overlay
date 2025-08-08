
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-slider-publisher";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/kilted/slider_publisher/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "3cfc52c3270e58a1376e023a9e23190bc9d842560be945495116ce06d414417f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.scipy rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.";
    license = with lib.licenses; [ mit ];
  };
}
