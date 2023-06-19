
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-util, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-iron-nav2-velocity-smoother";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_velocity_smoother/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "21b4598e42704c6140c647fc47cc80804a6b180ccd901c5bc45b96486ea310d4";
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
