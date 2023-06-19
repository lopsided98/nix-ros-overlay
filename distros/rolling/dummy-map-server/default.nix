
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-dummy-map-server";
  version = "0.30.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_map_server/0.30.0-1.tar.gz";
    name = "0.30.0-1.tar.gz";
    sha256 = "2cc6b903147766989b62076b26352f068ff5f714bffe7d5ad8eac432e6e2db6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy map server node'';
    license = with lib.licenses; [ asl20 ];
  };
}
