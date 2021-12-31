
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-galactic-nav2-regulated-pure-pursuit-controller";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_regulated_pure_pursuit_controller/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "f13615c9eb011d4cb1cf6007b4898f9564ce6e214f039a96ff51a09922820d77";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Regulated Pure Pursuit Controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
