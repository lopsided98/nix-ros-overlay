
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-landing-detection";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_landing_detection/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "7458d651ed54c38b9c8e0ea8df85acf2ba962e94a8275415301296960b463c6b";
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
