
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, geometry-msgs, ouxt-lint-common, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-fluent-rviz";
  version = "0.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fluent_rviz-release/archive/release/iron/fluent_rviz/0.0.3-4.tar.gz";
    name = "0.0.3-4.tar.gz";
    sha256 = "117070bd55096fddd67e983925a4fe1d5de4341d8f999378a3d4e758dd23e0bd";
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
