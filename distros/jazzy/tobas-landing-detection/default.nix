
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-landing-detection";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_landing_detection/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "1fde8c4a307048767c0028f487f6efd5b75638a5b6cbf874d44f9b720ed578ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dsp tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that detects vehicle landing and landed-state transitions.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
