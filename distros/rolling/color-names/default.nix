
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-color-names";
  version = "0.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_names-release/archive/release/rolling/color_names/0.0.3-6.tar.gz";
    name = "0.0.3-6.tar.gz";
    sha256 = "b9477a466a9e94471d1bd0a6ef5bda10992af1af6c637dbf4d20a91082cc3738";
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
