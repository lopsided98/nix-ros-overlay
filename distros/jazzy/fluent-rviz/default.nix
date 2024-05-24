
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, geometry-msgs, ouxt-lint-common, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-fluent-rviz";
  version = "0.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fluent_rviz-release/archive/release/jazzy/fluent_rviz/0.0.3-5.tar.gz";
    name = "0.0.3-5.tar.gz";
    sha256 = "738d0b2f54d76bac8b008284d191c1f28771bb64faa6beeb4a3912931ead3e8b";
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
