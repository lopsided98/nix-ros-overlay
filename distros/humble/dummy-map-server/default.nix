
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-dummy-map-server";
  version = "0.20.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/dummy_map_server/0.20.8-1.tar.gz";
    name = "0.20.8-1.tar.gz";
    sha256 = "bc2bafb0f359e1fb5bbc764724a21d68591d51e26d01c841ada0d243fc31c1cf";
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
