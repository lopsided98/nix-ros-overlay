
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-eloquent-nav2-lifecycle-manager";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/nav2_lifecycle_manager/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "2cd73f6b8c7af29ea972e95f55d5719cd02e578f2be57276ca1af38234daa54a";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav2-msgs nav2-util rclcpp-action rclcpp-lifecycle std-msgs std-srvs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A controller/manager for the lifecycle nodes of the Navigation 2 system'';
    license = with lib.licenses; [ asl20 ];
  };
}
