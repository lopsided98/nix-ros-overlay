
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, husky-control, husky-description, ros2launch, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-husky-gazebo";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_gazebo/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "ad1860accae9114da1ed658e87dd300e18db34d585e2c8f02435d49f1d427914";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control husky-control husky-description ros2launch urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
