
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, geometry-msgs, ouxt-lint-common, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-fluent-rviz";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fluent_rviz-release/archive/release/humble/fluent_rviz/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "79ccc7501cd98044007c166be8ba13ddeb1f13214b2c47de059dbb2500d87aa9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A library which makes Rviz fluent. Powered by C++17'';
    license = with lib.licenses; [ asl20 ];
  };
}
