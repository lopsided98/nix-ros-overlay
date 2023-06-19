
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-tuw-geometry";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_geometry-release/archive/release/humble/tuw_geometry/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "58c3a98dc01f60051845b3da4f0909d6d59e17d3c9f475a080a982bbbac0f573";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tuw_geometry package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
