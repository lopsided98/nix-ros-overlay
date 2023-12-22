
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-tuw-geometry";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_geometry-release/archive/release/humble/tuw_geometry/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "ead05b67d7d43c49d5bcfef73f5db67b4a81389db907feef1c64670d231e6faa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tuw_geometry package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
