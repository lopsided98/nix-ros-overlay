
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-nlp, tobas-node, tobas-nonplanar-multi-controller, tobas-pose-pid, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-random-axis-tilt-multi-controller";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_random_axis_tilt_multi_controller/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "1b9b7aa640222f59b09402aec4b6383dfdb0ba8dfe01a26eeac40b44017410c7";
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
