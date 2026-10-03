
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-pose-pid, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-nonplanar-multi-controller";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_nonplanar_multi_controller/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "a7d5f2aee31d0f053add6b94df67e1b190a9b5c29f8a598972c1eed9e1acb17c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-drone-tools tobas-node tobas-pose-pid tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Flight controller and constrained mixer for nonplanar multirotor aircraft.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
