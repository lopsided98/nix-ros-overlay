
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, husky-control, husky-description, ros2launch, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-husky-gazebo";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_gazebo/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "4a182210b862fa53998429604e1c069ea005f429d7e77b45598d7cfbb536d1c8";
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
