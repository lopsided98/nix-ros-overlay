
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, geometry-msgs, ouxt-lint-common, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-fluent-rviz";
  version = "0.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fluent_rviz-release/archive/release/lyrical/fluent_rviz/0.0.3-6.tar.gz";
    name = "0.0.3-6.tar.gz";
    sha256 = "5f3b3c52e45c7e98e0da9ad53450418176035edf2cbbabcc95d5fdeb72f0daf0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A library which makes Rviz fluent. Powered by C++17";
    license = with lib.licenses; [ asl20 ];
  };
}
