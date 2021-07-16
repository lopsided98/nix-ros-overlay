
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-color-names";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/color_names-release/archive/release/foxy/color_names/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "f8ea461dc0e2327076d1c4f082325a5ae4b91996d7906f15873d92e459ba7933";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rviz2 std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The color_names package'';
    license = with lib.licenses; [ mit ];
  };
}
