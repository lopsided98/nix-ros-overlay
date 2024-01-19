
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-color-names";
  version = "0.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_names-release/archive/release/iron/color_names/0.0.3-5.tar.gz";
    name = "0.0.3-5.tar.gz";
    sha256 = "a2aebc9fef3531c92f72ee3e5f6856e4e902b65ae6087a302d6132f8d663275c";
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
