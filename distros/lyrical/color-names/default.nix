
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-color-names";
  version = "0.0.3-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_names-release/archive/release/lyrical/color_names/0.0.3-7.tar.gz";
    name = "0.0.3-7.tar.gz";
    sha256 = "fcca5d598970fd152b748f18b215bd0495fec0d1e0e571153327bd18bb356db6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ rclcpp rviz2 std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The color_names package";
    license = with lib.licenses; [ asl20 ];
  };
}
