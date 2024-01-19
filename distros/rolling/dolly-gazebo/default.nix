
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, gazebo-ros-pkgs, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-dolly-gazebo";
  version = "0.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/rolling/dolly_gazebo/0.4.0-4.tar.gz";
    name = "0.4.0-4.tar.gz";
    sha256 = "6ea1596fcc8f70b0e3eccd8858e0a2bb504f17bd00467cad4e82218bdbbc1372";
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
