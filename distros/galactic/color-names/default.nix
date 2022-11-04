
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-color-names";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/color_names-release/archive/release/galactic/color_names/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "6e1d7f88dc431b97e80ec95d5a6a5c904e5c99f005ec79a871afa1dba6444e46";
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
