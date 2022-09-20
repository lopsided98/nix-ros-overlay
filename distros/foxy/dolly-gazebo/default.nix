
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, gazebo-ros-pkgs, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-dolly-gazebo";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/foxy/dolly_gazebo/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "e08093c308744c9721f6f86dce0fb818c91ae2780cd599fcf0965103c863d698";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow gazebo-ros-pkgs ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch Gazebo simulation with Dolly robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
