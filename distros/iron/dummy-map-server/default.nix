
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-iron-dummy-map-server";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/dummy_map_server/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "a3ab235c1a5affa1c323901c6f952a67edad464429f07a04ba614e5bb87382f5";
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
