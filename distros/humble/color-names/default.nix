
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-color-names";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_names-release/archive/release/humble/color_names/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "b64e0c4fc28edcf8ba6bfd37e7f4ba55ea37a9ed20e00b971860b99ef1153d27";
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
