
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros-ign-bridge, ros-ign-gazebo, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-dolly-ignition";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/foxy/dolly_ignition/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "73060f3527bdf2b339720edae21e65c8462d2f62f45f5e85280bfdf9b707935d";
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
