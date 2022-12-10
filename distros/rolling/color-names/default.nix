
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-color-names";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_names-release/archive/release/rolling/color_names/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "8fcd20f46eb7a5b7e3332f4f7c060353939451fc98bcdbf7cbd352877ed42068";
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
