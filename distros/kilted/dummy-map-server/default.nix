
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-dummy-map-server";
  version = "0.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/dummy_map_server/0.36.0-1.tar.gz";
    name = "0.36.0-1.tar.gz";
    sha256 = "72a28f49b3b179bc0358f930c4d14cb54e095120d811f883fc15603a43c5ecf0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "dummy map server node";
    license = with lib.licenses; [ asl20 ];
  };
}
