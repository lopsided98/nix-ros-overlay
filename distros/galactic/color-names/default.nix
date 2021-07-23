
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-color-names";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/color_names-release/archive/release/galactic/color_names/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "f0eb7edaf3aa63d6beb7597d22ad05df2244f3667c61764dcc5bf504b0fd4306";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rviz2 std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The color_names package'';
    license = with lib.licenses; [ mit ];
  };
}
