
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-nlp, tobas-node, tobas-nonplanar-multi-controller, tobas-pose-pid, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-random-axis-tilt-multi-controller";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_random_axis_tilt_multi_controller/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "bc7eef3af77842f5e866df12896b67c101dd8f086b47192d89da790cc3be647e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-drone-tools tobas-nlp tobas-node tobas-nonplanar-multi-controller tobas-pose-pid tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Flight controller and mixer for multirotors with randomly oriented tilting axes.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
