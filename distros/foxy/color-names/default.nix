
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-color-names";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/color_names-release/archive/release/foxy/color_names/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "caf9d1d49ab93d20f75da48ecb9a773f8dbefb13f77fdd9676cf428f3ce774f5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rviz2 std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The color_names package'';
    license = with lib.licenses; [ mit ];
  };
}
