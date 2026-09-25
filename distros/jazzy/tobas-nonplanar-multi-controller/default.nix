
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-pose-pid, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-nonplanar-multi-controller";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_nonplanar_multi_controller/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "e1f4fb41b7c6eec63ad5d2c9d0f04de728a689cb3e1f65d5661ca31ff86c8c81";
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
