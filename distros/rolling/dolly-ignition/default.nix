
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros-ign-bridge, ros-ign-gazebo, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-dolly-ignition";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/rolling/dolly_ignition/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "5004cf823b7f1207abb652001d47b49d00aa4c3d22a3607d2defc5edb73c38ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow ros-ign-bridge ros-ign-gazebo ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch Ignition simulation with Dolly robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
