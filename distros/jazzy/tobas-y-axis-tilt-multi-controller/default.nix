
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-drone-tools, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-y-axis-tilt-multi-controller";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_y_axis_tilt_multi_controller/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "ea45a75fff08f3b26555d9d71184f7003aa95d6916e1d7fb9be7d7e52496cd55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-drone-tools tobas-node tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Flight controller, dynamics, and mixer for Y-axis tilt multirotor aircraft.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
