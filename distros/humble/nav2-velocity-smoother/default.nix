
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-util, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-nav2-velocity-smoother";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_velocity_smoother/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "570c5e52e4fa868c7b8df72e63d54997ece9cdfaf27d9ad4cbcb188bc5c31584";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-util rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Nav2's Output velocity smoother'';
    license = with lib.licenses; [ asl20 ];
  };
}
