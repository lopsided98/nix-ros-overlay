
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-color-names";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/color_names-release/archive/release/foxy/color_names/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "067bb1a95abef4aa130544fed636425614ff5a8f5897c8e6f4f3b61ea5a0ff3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ rclcpp rviz2 std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The color_names package'';
    license = with lib.licenses; [ asl20 ];
  };
}
