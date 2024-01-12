
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros-ign-bridge, ros-ign-gazebo, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-dolly-ignition";
  version = "0.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/rolling/dolly_ignition/0.4.0-4.tar.gz";
    name = "0.4.0-4.tar.gz";
    sha256 = "e5b383136c967f280ee92d8f3efb91a62f2384e4f79af89f58930f8f219741c3";
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
